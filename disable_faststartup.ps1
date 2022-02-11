try {
	if(-NOT (Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power")){ return $false };
	if((Get-ItemPropertyValue -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power' -Name 'HiberbootEnabled' -ea SilentlyContinue) -eq 0) {  } else { return $false };
}
catch { return $false }
return $true