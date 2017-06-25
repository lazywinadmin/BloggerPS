function Get-BloggerPost
{
	Get-BloggerItem | where { $_.EntryType -eq 'Post' }
}