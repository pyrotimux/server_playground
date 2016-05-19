﻿$VerbosePreference = "Continue"
. .\AnsibleWinModuleGen.ps1
Invoke-AnsibleWinModuleGen -DscResourceName "xADDomain" -TargetPath "C:\vagrant\ansible\library" -TargetModuleName "win_ad_xaddomain"

Invoke-AnsibleWinModuleGen -DscResourceName "xADDomainController" -TargetPath "C:\vagrant\ansible\library" -TargetModuleName "win_ad_xaddc"

Invoke-AnsibleWinModuleGen -DscResourceName "xADDomainDefaultPasswordPolicy" -TargetPath "C:\vagrant\ansible\library" -TargetModuleName "win_ad_xadpasspol"

Invoke-AnsibleWinModuleGen -DscResourceName "xADDomainTrust" -TargetPath "C:\vagrant\ansible\library" -TargetModuleName "win_ad_xadtrust"

Invoke-AnsibleWinModuleGen -DscResourceName "xADGroup" -TargetPath "C:\vagrant\ansible\library" -TargetModuleName "win_ad_xadgroup"

Invoke-AnsibleWinModuleGen -DscResourceName "xADOrganizationalUnit" -TargetPath "C:\vagrant\ansible\library" -TargetModuleName "win_ad_xadou"

Invoke-AnsibleWinModuleGen -DscResourceName "xADRecycleBin" -TargetPath "C:\vagrant\ansible\library" -TargetModuleName "win_ad_xadrecyclebin"

Invoke-AnsibleWinModuleGen -DscResourceName "xADUser" -TargetPath "C:\vagrant\ansible\library" -TargetModuleName "win_ad_xaduser"

Invoke-AnsibleWinModuleGen -DscResourceName "xWaitForADDomain" -TargetPath "C:\vagrant\ansible\library" -TargetModuleName "win_ad_xwaitfordomain"

