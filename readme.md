# trial-erlang

```bash
erlc hello.erl
erl -noshell -s hello start -s init stop
```

## Windows 安装

[官网](https://erlang.org) 下载安装包安装。
之后需要把安装目录下的 bin 路径添加到环境变量 PATH

### 安装 Rebar3

[官网](https://www.rebar3.org) 下载文件 rebar3 放到 erlang 的 bin 目录。
新建 rebar3.cmd 文件，内容如下（代码来自 rebar3 官网）。

```cmd
@echo off
setlocal
set rebarscript=%~f0
escript.exe "%rebarscript:.cmd=%" %*
```
