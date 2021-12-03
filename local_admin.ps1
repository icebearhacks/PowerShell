invoke-command {
    $members = net localgroup administrators |
    where {$_ -AND $_ }|
    select -skip 4
    New-Object PSObject -Property @{
    Computername = $env:COMPUTERNAME
    Group = "Administrators"
    Members=$members
    }
    } -computer HOSTNAME -HideComputerName | select * -ExcludeProperty RunspaceID | Export-csv "C:\FILE_PATH\local_admins.csv" -NoTypeInformation