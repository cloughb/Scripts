# Import the Active Directory module
Import-Module ActiveDirectory

# Define the domain you want to query
$domain = "bsbc.local"

# Query Active Directory for user accounts in the specified domain
$users = Get-ADUser -Filter * -Server $domain

# Display the list of users
foreach ($user in $users) {
    Write-Host "Username: $($user.SamAccountName)"
    Write-Host "Full Name: $($user.Name)"
    Write-Host "Email: $($user.EmailAddress)"
    Write-Host "DistinguishedName: $($user.DistinguishedName)"
    Write-Host "Enabled: $($user.Enabled)"
    Write-Host "----------"
}

# Cleanup - Remove the Active Directory module
Remove-Module ActiveDirectory