Function Pip-Upgrade{
pip freeze | %{$_.split('==')[0]} | %{pip install --upgrade --user $_}
}

Export-ModuleMember -Function Pip-Upgrade