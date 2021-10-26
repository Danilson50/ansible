TLS 1.2 should be enabled to get it working. In PowerShell you can find out which protocols your system supports by running this code:

[Enum]::GetNames([Net.SecurityProtocolType]) -contains 'Tls12'

If the result is True then your system supports TLS 1.2. You can find out which protocols are being used by running:

[System.Net.ServicePointManager]::SecurityProtocol.HasFlag([Net.SecurityProtocolType]::Tls12)

If the result is True then TLS 1.2 is being used . However, you can add TLS 1.2 explicitly by using:

[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12

This should solve these problems.