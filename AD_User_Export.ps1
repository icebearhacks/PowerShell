#Import-Module ActiveDirectory

Get-ADUser -Filter * -Properties * | Export-Csv C:\FILE_PATH_HERE\ADExport.csv