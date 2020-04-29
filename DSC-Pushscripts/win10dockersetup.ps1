Configuration Dockersetupwin10 {
    Import-DscResource -Module cChoco
    Import-DscResource -Module PSDesiredStateConfiguration
    Node localhost {
        WindowsFeature Hyperv {
            Name = 'Hyper-V'
            Ensure = 'Present'
        }

        cChocoPackageInstaller Docker {
            Name = 'docker'
            Ensure = 'Present'
        }
    }
}

Dockersetupwin10