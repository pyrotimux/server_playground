. .\AnsibleWinModuleGen.ps1
$ErrorActionPreference = "Stop"
$VerbosePreference = "Continue"
$ress = Find-DscResource -Verbose:$false
$ress = $ress | sort Name
foreach ($res in $ress)
{
    write-verbose "Processing $($res.Name)"
    $modulename = $res.ModuleName.ToLower()
    
    #CHeck if we have the latest module installed
    $DownloadModule = $true
    $LocalModule = get-module $modulename -list -ErrorAction SilentlyContinue -Verbose:$false

    if ($LocalModule)
    {
        if ($localmodule.count -gt 1)
        {
            $localmodule = $localmodule | Sort-Object version -Descending | select -first 1
        }
        $VersionCheck = $LocalModule.Version.CompareTo($res.Version)
        if ($versioncheck -eq 0)
        {
            Write-verbose "The latest module is already installed locally"
            $DownloadModule = $false
        }
        ElseIf ($versioncheck -eq -1)
        {
            Write-Verbose "The local module is outdated. Upgrading"
        }
    }


    if ($DownloadModule)
    {
        Write-Verbose "Installing module $modulename"
        Install-Module $modulename -Force -Verbose:$false

        #Module should now be available locally
        $LocalModule = get-module $modulename -list -ErrorAction Stop -Verbose:$false
    }

    $Description = find-module $modulename -Verbose:$false | select -ExpandProperty Description
    Write-verbose "Adding description:"
    Write-verbose $description
    $helpobject = "" | Select AnsibleVersion,Shortdescription,LongDescription
    $helpobject.Longdescription = $Description
    $helpobject.Shortdescription = "Generated from DSC module $modulename version $($res.Version.ToString()) at $((get-date).tostring())"
    Write-verbose "Generating ansible module files"
    Invoke-AnsibleWinModuleGen -DscResourceName $res.Name -TargetPath "C:\AnsibleModules\$modulename" -TargetModuleName ("win_$($res.Name)").ToLower() -HelpObject $helpobject  -erroraction "Continue"
    if ($downloadmodule)
    {
        write-verbose "Removing module $modulename"
        remove-item ($LocalModule.ModuleBase) -Recurse -Force
    }
    Write-verbose ""
    Write-verbose ""
    $description = $null
}



