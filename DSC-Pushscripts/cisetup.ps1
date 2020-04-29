Configuration cisetup {
    param(
        $java = 'jdk8',
        $targethost = 'localhost'
        )
    Import-DscResource -Module cChoco

    Node $targethost {
        cChocoPackageInstaller java{
            Name = $java
            Ensure = 'Present'
        }
    }
}

cisetup -java 'jdk9' -targethost 'localhost'