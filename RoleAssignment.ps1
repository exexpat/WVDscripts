$FileShareContributorRole = Get-AzRoleDefinition "AFReadWriteRole"
$scope = "/subscriptions/[subscriptionID]/resourceGroups/[resourcegroup]/providers/Microsoft.Storage/storageAccounts/[storageaccount]/fileServices/default/fileshare/[filesharename]"
New-AzRoleAssignment -SignInName [UPN_Email] -RoleDefinitionName $FileShareContributorRole.Name -Scope $scope
