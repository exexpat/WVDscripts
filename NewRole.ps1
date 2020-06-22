Connect-AzAccount
install-module -name az.storage -Force -AllowClobber
import-module -name az.storage
install-module -name az.resources -Force
import-module -name az.resources -Force
New-AzRoleDefinition -InputFile 'c:\internal_data\azure\azurefilesreadwriterole.json'