function Get-BloggerInformation
{
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
		$global:PSBloggerExport.feed
	}
}