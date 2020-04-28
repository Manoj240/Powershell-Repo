Configuration IISConfig {
    Import-DSCResource -ModuleName PSDesiredStateConfiguration

    Node localhost {
        WindowsFeature IIS {
            Name = 'Web-Server'
            Ensure = 'Present'
            Dependson = '[WindowsFeature]DOTNET'
        }
        WindowsFeature DOTNET {
            Name = 'NET-Framework-45-Core'
            Ensure = 'Present'
            Dependson = '[File]Mainpack'
        }

        File Tempfol {
            DestinationPath = "C:\Temp"
            Ensure = 'Present'
            Type = 'Directory'
        }
        File Mainpack {
            DestinationPath = "C:\Temp\Manoj.txt"
            Ensure = 'Present'
            DependsOn = '[File]Tempfol'
            Contents = ''
        }
    }
}

IISConfig