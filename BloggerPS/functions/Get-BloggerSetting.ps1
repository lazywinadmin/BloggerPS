function Get-BloggerSetting
{
	Get-BloggerItem | where { $_.EntryType -eq 'Settings' }
}