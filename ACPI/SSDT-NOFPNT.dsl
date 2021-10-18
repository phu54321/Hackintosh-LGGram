/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (32-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./SSDT-NOFPNT.aml, Sun Oct 17 18:28:55 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000091 (145)
 *     Revision         0x02
 *     Checksum         0x94
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "AWAC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "AWAC", 0x00000000)
{
    External (_SB_.PCI0.SPI1.FPNT, DeviceObj)
    External (N04D, IntObj)

    Scope (_SB)
    {
        If (_OSI ("Darwin"))
        {
            N04D = Zero
        }
    }

    Scope (_SB.PCI0.SPI1.FPNT)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (_STA ())
            }
        }
    }
}

