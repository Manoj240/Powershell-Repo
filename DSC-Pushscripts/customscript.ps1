Configuration BootstrapOS {
    param(
        $targethost
    )
    Import-Module -Name PSDesiredStateConfiguration
        Node $targethost {
            Script hardenos {
                SetScript = {
                    Invoke-Webrequest -URi https://github.com/terraform-providers/terraform-provider-azurerm/blob/master/examples/virtual-machines/windows/basic-password/main.tf -out 'C:\main.tf'
                }

                TestScript = {
                    Test-Path 'C:\main.tf'
                }

                GetScript = {

                }
            }
        }
}