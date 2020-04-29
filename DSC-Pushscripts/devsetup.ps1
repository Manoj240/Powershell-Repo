Configuration Devsetup {
    Import-DscResource -Module PSDesiredStateConfiguration
    Import-DscResource -module cChoco

    Node localhost {
        cChocoPackageInstaller git {
            Name = 'git'
            Ensure = 'Present'
        }

        cChocoPackageInstaller vscode {
            Name = 'VisualStudioCode'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]git'
        }
    }
}

Devsetup