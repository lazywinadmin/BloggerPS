function Get-BloggerTag
{
<#
.SYNOPSIS
    Return the tags
.DESCRIPTION
    This function will return all the tag used on one post if the parameter $item is used
    If you don't use the Item parameter, it will retrieve all the tags and returned all the tags used grouped by name
.EXAMPLE
    Get-BloggerPost|Select -fi 5|Get-BloggerTag
.EXAMPLE
    Get-BloggerTag
#>
	[CmdletBinding()]
	PARAM (
		[parameter(ValueFromPipeline = $true)]
		$Item
	)
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
		IF ($Item)
		{
			($Item.raw.category | Where-Object { $_.scheme -eq 'http://www.blogger.com/atom/ns#' }).term
		}
		else
		{
			
			($global:PSBloggerExport.feed.entry.category |
            Where-Object { $_.scheme -eq 'http://www.blogger.com/atom/ns#' }).term |
            Group-Object
		}
	}
}