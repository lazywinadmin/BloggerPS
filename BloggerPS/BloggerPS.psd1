@{
	NestedModules = "BloggerPS.psm1"
	ModuleVersion = "0.1.0"
	GUID = "8cee40d3-f4db-4a0f-80ca-6655ca11bfbe"
	Author = "Francois-Xavier Cat"
	Copyright = "(c) 2017. All rights reserved."
	Description = "PowerShell module to parse the export of a Blogger's blog"
	PowerShellVersion = "1.0.0"
	FunctionsToExport = 'Get-BloggerAuthor','Get-BloggerComment','Get-BloggerInformation','Get-BloggerItem','Get-BloggerItemType','Get-BloggerLink','Get-BloggerPage','Get-BloggerPost','Get-BloggerSetting','Get-BloggerTag','Get-BloggerTemplate','Test-BloggerItemIsDraft'

	PrivateData = @{
        PSData = @{
            #Tags = ""
            LicenseUri = "https://github.com/lazywinadmin/BloggerPS/blob/master/BloggerPS/license"
            ProjectUri = "https://github.com/lazywinadmin/BloggerPS"
            #ReleaseNotes = ""
        }
    }
}

