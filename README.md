# devops

## win 上交叉编译Linux

在vscode的终端中编译始终是EXE, 使用系统的cmd执行下面的编译

```cmd
SET CGO_ENABLED=0
SET GOOS=linux
SET GOARCH=amd64
go build
```
