Import-module Microsoft.Rdinfra.RdPowerShell
Install-module Microsoft.Rdinfra.RdPowerShell
Add-RdsAccount -DeploymentURL https://rdbroker.wvd.microsoft.com
Get-RDSTenant -Name "[YourWVDTenantName]"
Get-RDSAppGroup -TenantName "[YourWVDTenantName]" -HostPoolName "My first hostpool"
New-RdsAppGroup -TenantName "[YourWVDTenantName]" -HostPoolName "My first hostpool" -Name "Basic app group" -ResourceType RemoteApp
Get-RdsStartMenuApp -TenantName "[YourWVDTenantName]" -HostPoolName "My first hostpool" -AppGroupName "Remote Apps"
New-RdsRemoteApp -TenantName "[YourWVDTenantName]" -HostPoolName "My first hostpool" -AppGroupName "Basic app group" -AppAlias word
Add-RdsAppGroupUser -TenantName "[YourWVDTenantName]" -HostPoolName "My first hostpool" -AppGroupName "Basic app group" -UserPrincipalName [UPN Email]
Remove-RdsAppGroupUser -TenantName "[YourWVDTenantName]" -HostPoolName "My first hostpool" -AppGroupName "Desktop Application Group" -UserPrincipalName [UPN Email]
Remove-RdsAppGroupUser -TenantName "[YourWVDTenantName]" -HostPoolName "My first hostpool" -AppGroupName "Basic app group" -UserPrincipalName [UPN Email]
Remove-RdsRemoteApp -TenantName "[YourWVDTenantName]" -HostPoolName "My first hostpool" -AppGroupName "Basic app group" -Name Word
Remove-RdsAppGroup -TenantName "[YourWVDTenantName]" -HostPoolName "My first hostpool" -Name "Basic app group"