function Test-BloggerItemIsDraft
{
	PARAM ($String)
	
	$String -match '\<app:draft\>(.+)\</app:draft\>'
	
}