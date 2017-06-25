function Get-BloggerPage
{
	Get-BloggerItem | where { $_.EntryType -eq 'Page' }
}