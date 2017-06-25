function Get-BloggerTemplate
{
	Get-BloggerItem | where { $_.EntryType -eq 'Template' }
}