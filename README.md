# devops

## win 上交叉编译Linux

在vscode的终端中编译始终是EXE, 使用系统的cmd执行下面的编译

```cmd
SET CGO_ENABLED=0
SET GOOS=linux
SET GOARCH=amd64
go build
```

在win上交叉编译出的二进制文件没有可执行权限,还是直接在Mac/Linux平台上编译代码后推送
