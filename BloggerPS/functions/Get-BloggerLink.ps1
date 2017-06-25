function Get-BloggerLink
{
	[CmdletBinding()]
	PARAM (
		[Parameter(ValueFromPipeline = $true)]
		$Item
	)
	
	$Item.link | ForEach-Object {
		
		$HrefURI = [uri]($psitem.href)
		
		[PSCustomobject][ordered]@{
			Rel			 = $_.rel -as [System.String]
			Type		    = $_.type -as [System.String]
			Href		    = $_.href -as [System.String]
			HrefUri		 = $HrefURI
			Raw			 = $_
		}
	}
}