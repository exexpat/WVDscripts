Import-module Microsoft.Rdinfra.RdPowerShell
Install-module Microsoft.Rdinfra.RdPowerShell
Add-RdsAccount -DeploymentURL https://rdbroker.wvd.microsoft.com
New-RdsTenant -Name "[YourWVDTenantName]" -AadTenantID [Azure AD Tenant ID] -AzureSubscriptionID [Azure Subscription ID]