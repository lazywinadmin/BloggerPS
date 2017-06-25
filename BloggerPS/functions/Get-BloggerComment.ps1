function Get-BloggerComment
{
	Get-BloggerItem | Where-Object { $_.EntryType -eq 'Comment' }
}