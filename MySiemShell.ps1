#List of servers to get events from
$servers = "GabesPC"

#Search Parameters
$searchFields = @{
    "LogName" = "System"
    "ID" = 12
}

#Create empty object to store list of events
$allEvents = @()

#Loop through the server list
foreach($xyz in $servers) {
    $allEvents += Get-WinEvent -FilterHashtable $searchFields -ComputerName $xyz
}
#Export allEvents into a CSV excell file
$allEvents | Export-CSV -Path "C:\Users\gabri\OneDrive\Desktop\mysiem.csv"

