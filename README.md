# Getting Started

## Host
edit /etc/hosts
```
127.0.0.1 php.local
```

## Access to the website
Run the container

```
docker-compose up -d
```

Access to the site  
http://php.local

## How to use Xdebug (VS Code)
Edit ./.vscode/launch.json

```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Listen for Xdebug",
            "type": "php",
            "request": "launch",
            "port": 9003,
        },
        {
            "name": "Launch currently open script",
            "type": "php",
            "request": "launch",
            "program": "${file}",
            "cwd": "${fileDirname}",
            "port": 9003
        }
    ]
}
```