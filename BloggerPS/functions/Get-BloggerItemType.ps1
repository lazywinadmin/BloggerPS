function Get-BloggerItemType
{
	PARAM ([System.String]$Term)
	Switch -Regex ($Current.category.term)
	{
		'http://schemas.google.com/blogger/2008/kind#post' { 'Post' }
		'http://schemas.google.com/blogger/2008/kind#comment' { 'Comment' }
		'http://schemas.google.com/blogger/2008/kind#page' { 'Page' }
		'http://schemas.google.com/blogger/2008/kind#settings' { 'Settings' }
		'http://schemas.google.com/blogger/2008/kind#template' { 'Template' }
	}
}