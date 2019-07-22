install-module AzureRM
login-AzureRMAccount
install-module -name az.storage -Force -AllowClobber
New-AzStorageAccount -ResourceGroupName "[Resource Group Name]" `
    -Name "[Resource Group Name]" `
    -Location "East US" `
    -SkuName Standard_LRS `
    -Kind StorageV2 `
    -EnableAzureFilesAadIntegrationForSMB $true