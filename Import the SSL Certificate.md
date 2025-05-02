# On the Windows server,
# import the certificate manually or via PowerShell:

$certPath = "C:\certs\wildcard_yourdomain_local.pfx"

$certPassword = ConvertTo-SecureString "yourPfxPassword" -AsPlainText -Force

Import-PfxCertificate -FilePath $certPath -CertStoreLocation Cert:\LocalMachine\My -Password $certPassword

# **note**: Ensure the imported certificate appears in Local Computer > Personal > Certificates.
