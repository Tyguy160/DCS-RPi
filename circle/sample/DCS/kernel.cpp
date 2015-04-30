//
// kernel.cpp
//
// Circle - A C++ bare metal environment for Raspberry Pi
// Copyright (C) 2014  R. Stange <rsta2@o2online.de>
// 
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#include "kernel.h"
#include <circle/string.h>

// Include library for GPIO read/write
#include <circle/gpiopin.h>

#define GPIO_INPUT_PIN	18

// Address of GPIO level register
volatile unsigned int *gplev0 = (unsigned int *) 0x20200034;

#define PARTITION	"umsd1-1"

static const char FromKernel[] = "kernel";

// Number of data points desired
static const unsigned int numPoints = 1500000;

// Check for input on pin

// Create array for values
volatile unsigned int *values;

// Create array for times
volatile unsigned int *times;


CKernel::CKernel (void)
:	m_Screen (m_Options.GetWidth (), m_Options.GetHeight ()),
	m_Timer (&m_Interrupt),
	m_Logger (m_Options.GetLogLevel (), &m_Timer),
	m_DWHCI (&m_Interrupt, &m_Timer)
{
	m_ActLED.Blink (5);	// show we are alive


	values = new unsigned int[numPoints];
	times = new unsigned int[numPoints];

	// Initialize ability to count clock cycles
	asm volatile ("mcr p15, 0, %0, c15, c12, 0" : : "r" (1));
	//asm volatile ("mcr p15,  0, %0, c15,  c9, 0\n" : : "r" (1));

	// Create clock cycle count variable
	volatile unsigned int c1;
	volatile unsigned int c2;

	// Loop until number of data points have been read
	for (unsigned int i = 0; i < numPoints; i++) {
		// Get current clock cycle count
		
		asm volatile ("mrc p15, 0, %0, c15, c12, 1" : "=r" (c1));
		volatile unsigned int level = *gplev0;
		asm volatile ("mrc p15, 0, %0, c15, c12, 1" : "=r" (c2));
		
		volatile unsigned int pin18 = (1 << GPIO_INPUT_PIN);
		
		volatile unsigned int statusOf18 = level & pin18;
		
		volatile unsigned int val = statusOf18;

		// Store binary number in values array
		// values[i] = ((*gplev0 & (1 << GPIO_INPUT_PIN)) > 0);
		
		values[i] = val;
		
		// Get current clock cycle count
  		

		// Store current clock cycle count in times array
		times[i] = (c2-c1);
	}

}

CKernel::~CKernel (void)
{
}

boolean CKernel::Initialize (void)
{


	boolean bOK = TRUE;

	if (bOK)
	{
		bOK = m_Screen.Initialize ();
	}

	if (bOK)
	{
		bOK = m_Serial.Initialize (115200);
	}

	if (bOK)
	{
		CDevice *pTarget = m_DeviceNameService.GetDevice (m_Options.GetLogDevice (), FALSE);
		if (pTarget == 0)
		{
			pTarget = &m_Screen;
		}

		bOK = m_Logger.Initialize (pTarget);
	}

	if (bOK)
	{
		bOK = m_Interrupt.Initialize ();
	}

	if (bOK)
	{
		bOK = m_Timer.Initialize ();
	}

	if (bOK)
	{
		bOK = m_DWHCI.Initialize ();
	}

	return bOK;
}

TShutdownMode CKernel::Run (void)
{	

	// // Disable interrupts
	// for (int i = 0; i < IRQ_LINES; i++) {
	// 	m_Interrupt.DisableIRQ(i);
	// }

	// // Enable interrupts
	// for (int i = 0; i < IRQ_LINES; i++) {
	// 	m_Interrupt.EnableIRQ (i);
	// }

//	m_Logger.Write (FromKernel, LogNotice, "Compile time: " __DATE__ " " __TIME__);

	// Mount file system
	CDevice *pPartition = m_DeviceNameService.GetDevice (PARTITION, TRUE);
	if (pPartition == 0)
	{
//		m_Logger.Write (FromKernel, LogPanic, "Partition not found: %s", PARTITION);
	}

	if (!m_FileSystem.Mount (pPartition))
	{
//		m_Logger.Write (FromKernel, LogPanic, "Cannot mount partition: %s", PARTITION);
	}

	// Create file and write to it
	char filename[] = "values.txt";
	unsigned hFile = m_FileSystem.FileCreate (filename);
	if (hFile == 0)
	{
//		m_Logger.Write (FromKernel, LogPanic, "Cannot create file: %s", filename);
	}

	for (unsigned nLine = 0; nLine < numPoints; nLine++)
	{
		CString Msg;
		Msg.Format ("%u\n", values[nLine]);

		if (m_FileSystem.FileWrite (hFile, (const char *) Msg, Msg.GetLength ()) != Msg.GetLength ())
		{
//			m_Logger.Write (FromKernel, LogError, "Write error");
			break;
		}
	}

	if (!m_FileSystem.FileClose (hFile))
	{
//		m_Logger.Write (FromKernel, LogPanic, "Cannot close file");
	}

//	m_Logger.Write (FromKernel, LogDebug, "You have reached the end of the C++ file and your file has been closed");

        // Create file and write to it
        char filename2[] = "times.txt";
        hFile = m_FileSystem.FileCreate (filename2);
	if (hFile == 0)
        {
//                m_Logger.Write (FromKernel, LogPanic, "Cannot create file: %s", filename2);
        }

        for (unsigned nLine = 0; nLine < numPoints; nLine++)
        {
                CString Msg;
                Msg.Format ("%u\n", times[nLine]);

                if (m_FileSystem.FileWrite (hFile, (const char *) Msg, Msg.GetLength ()) != Msg.GetLength ())
                {
//                        m_Logger.Write (FromKernel, LogError, "Write error");
                        break;
                }
        }

        if (!m_FileSystem.FileClose (hFile))
        {
//                m_Logger.Write (FromKernel, LogPanic, "Cannot close file");
        }

	m_Logger.Write (FromKernel, LogDebug, "The files have been successfully written.");


	return ShutdownHalt;
}
