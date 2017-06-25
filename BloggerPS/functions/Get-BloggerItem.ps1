function Get-BloggerItem
{
	[CmdletBinding()]
	PARAM ($Type)
	BEGIN
	{
		if (-not $global:PSBloggerExport)
		{
			Write-Warning -Message "You need to use Import-BloggerExport first to load the Export from Blogger prior to use this function"
			break
		}
	}
	PROCESS
	{
		$global:PSBloggerExport.feed.entry |
		ForEach-Object {
			
			$Current = $_
			
			New-Object -TypeName PSObject -Property @{
				Raw	    = $Current
				EntryType  = Get-BloggerItemType -Term $Current.category.term
				EntryType2 = $Current.category.term
				Id		 = $Current.id
				Published  = $Current.published
				Updated    = $Current.updated
				Tags	   = $Current.entry.category | Where-Object { $_.scheme -eq 'http://www.blogger.com/atom/ns#' }
				Title	  = $Current.title.'#text'
				Content    = $Current.content.'#text'
				Link	   = $Current.link | ForEach-Object { $_ -as [pscustomobject] }
				Author	 = $Current.author
				Total	  = $Current.total #Total Comments
				Draft	  = Test-BloggerItemIsDraft -String $Current.innerxml
			}
		}
	}
	END { }
}
