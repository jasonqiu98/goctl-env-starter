# goctl-env

A way to quickly install the go-zero environment using Docker

## Install `goctl`, `protoc` and `protoc-gen-go` using Docker

Before everything, clone this project.

```
git clone https://github.com/jasonqiu98/goctl-env-starter.git
```

1. Install (and run) the container `goctl-env`. Note that the path `/go/src` in the Docker container is linked to the path `src/` in the project folder.
```shell
cd goctl-env
/bin/bash create.sh
```

2. Re-run the container
```shell
/bin/bash run.sh
```

3. Occasionally, some dependencies may not be installed correctly. In this case, re-run the following command in the created container.
```shell
goctl env check -i -f -v
```

## [Optional] Install `goctl`, `protoc` and `protoc-gen-go` locally

1. Run the following command in your terminal.
   ```shell
   go install github.com/zeromicro/go-zero/tools/goctl@latest
   ```
2. After successfully installed, the package `goctl` can be found under the path `$GOPATH/bin`. The `$GOPATH` should be the path to which you normally install your go libraries/packages.
3. Make sure `$GOPATH/bin` is in your environment paths. I did this on my Linux Mint 21 machine by adding the following line to the file `~/.bashrc`.
   ```
   export PATH=$PATH:~/go/bin
   ```
  Here `~/go` is my `$GOPATH` and you should use your own one. Run the following command to make the environment path take effect immediately.
   ```shell
   source ~/.bashrc
   ```
4. After everything, run `goctl -v`, and here is my result.
  - `goctl version 1.4.0 linux/amd64`
5. Finally, run the following command to install `protoc` and `protoc-gen-go`.
   ```shell
   goctl env check -i -f --verbose
   ```
