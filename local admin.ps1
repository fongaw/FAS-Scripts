$Workgroup = "CL-01"#IF you want to add computer to domain edit here(Domain name)
$Password = Read-Host -Prompt "Enter password for $user" -AsSecureString
$Username = "$Workgroup\Username" 
$credential = New-Object System.Management.Automation.PSCredential($Username,$Password)
Add-Computer -WorkGroup $Workgroup -Credential $credential
Restart-Computer -Force