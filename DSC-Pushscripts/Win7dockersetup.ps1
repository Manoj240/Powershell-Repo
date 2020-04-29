Configuration Win7dockersetup {
    Import-DscResource -Module cChoco
    Node localhost {
        cChocoPackageInstaller Virtualbox {
            Name = 'virtualbox'
            Ensure = 'Present'
        }

        cChocoPackageInstaller dockertoolbox {
            Name = 'docker-toolbox'
            Ensure = 'Present'
        }
    }
}

Win7dockersetup