Get-WmiObject win32_networkadapterconfiguration | 
Select-Object -Property @{
    Name = 'IPAddress'
    Expression = {($PSItem.IPAddress[0])}
},MacAddress,hostname | 
Where-Object IPAddress -NE $null