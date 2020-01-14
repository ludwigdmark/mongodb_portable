# MongoDB portable (windows)

Minimal MongoDB server run in terminal with single config.ini file. 

## Getting Started

1. All configurations can be changed (and should be reviewed) in [config.ini](/config.ini)
2. Database files are stored at /data/db
3. Log files are stored at /data/logs
4. Just execute [mongodb.cmd](/mongodb.cmd) to start the server.

***

* Sample output:
    `
        Reading config values...
        Setting db and log paths...
        Compiling arguments string...
        Creating db and log directories if not present...
        Ready!
        ------
        Starting MongoDB...
        Listening On: 27999
        Logging To:   data\logs\output.log
        Auth Type:    noauth
    `

## Prerequisites

* [Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/en-us/download/details.aspx?id=40784)