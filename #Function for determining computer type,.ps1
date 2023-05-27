#Function for determining computer type, error handling, software type.
#Appears to be functionning as intended
function Computer-Type {
    For ($i = 0; $i -lt 3; $i++) {
         $comptype = Read-Host -Prompt "Enter the type of computer, either laptop or workstation"
         if ($comptype -eq "laptop") {
             write-output "You have entered laptop, lets install some software."
             cd 'C:\Users\gimli\Documents\Standardization Script\Installs'
             Start-Process MBSetup.exe
             Start-Process BraveBrowserSetup.exe
             Start-Process SteamSetup.exe
             .\daddy.png
             $i = 3
         }
         elseif($comptype -eq "workstation") {
             cd 'C:\Users\gimli\Documents\Standardization Script\Installs'
             Start-Process MBSetup.exe
             Start-Process BraveBrowserSetup.exe
             Start-Process SteamSetup.exe
             .\daddy.png
             $i = 3
         }
         elseif($comptype -ne "laptop") {
             write-output "Unknown computer type, please enter either workstation or laptop"
         }
         elseif($comptype -ne "workstation") {
             write-output "Unknown computer type, please enter either workstation or laptop"
         }
         else {
             .\daddy.png
         }
     }    
 }
 #It appears to be working as intended.
 function Computer-Name {
     For ($i = 0; $i -lt 3; $i++) {
         $compname = Read-Host -Prompt "What would you like to name the computer? (TT-LOC-IN)"
         $domaincred = Read-Host -Prompt "Please enter a domain user name"
         if($compname -eq "WS-OMA-BC") {
             Rename-Computer -NewName "$compname" -DomainCredential $domaincred -Force
             cd 'C:\Users\gimli\Documents\Standardization Script\Installs'
             .\daddy.png
             $i = 3
         }
         elseif($compname -eq "LT-OMA-BC") {
             Rename-Computer -NewName "$compname" -DomainCredential $domaincred -Force
             cd 'C:\Users\gimli\Documents\Standardization Script\Installs'
             .\daddy.png
             $i = 3
         }    
         elseif($compname -ne "**-**-**") {
             write-output "Please use the format CT-LOC-IN"
         } 
         elseif($compname -ne "**-**-**") {
             write-output "Please use the format CT-LOC-IN"
         }
     }
 }
 
 #Currently, the $null varaible is not working as intended
 function Local-Admin {
     For ($i = 0; $i -lt 3; $i++) {
         $null
         $password = Read-Host -AsSecureString "Please insert the local admin password desired"
         if($password -ne $null) {
             Enable-LocalUser -Name "Administrator" | Enable-LocalUser 
             Get-LocalUser -Name "Administrator" | Set-LocalUser -Password $password
             write-output "Thank you for setting the password, remember it"
             cd 'C:\Users\gimli\Documents\Standardization Script\Installs'
             .\daddy.png
             $i = 3
         }
         elseif($password -eq $null) {
             write-output "Please insert a value for the admin password"
         }
         else {
             .\daddy.png
         }
     }
 }
 
 function Domain-Join {
     For ($i = 0; $i -lt 3; $i++) {
         $domain = Read-Host "Please insert the domain that you wish to join"
         $domaincred = Read-Host -Prompt "Please insert a domain user name"
 
 }
 Computer-Type
 Computer-Name
 Local-Admin
 
 exit
 
 