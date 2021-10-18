DefinitionBlock ("", "SSDT", 2, "DRTNIA", "NVME", 0x00000000)
{
    External (_SB_.PCI0.RP09, DeviceObj)

    Scope (_SB.PCI0.RP09)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
                Return (Zero)
        }
    }
}

