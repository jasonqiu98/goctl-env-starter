# goctl-env

A way to quickly install the [go-zero](https://go-zero.dev/) environment using Docker

## Install `goctl`, `protoc` and `protoc-gen-go` using Docker

Before everything, clone this project.

```
git clone https://github.com/jasonqiu98/goctl-env-starter.git
cd goctl-env-starter
```

Also, make sure your Docker daemon is running.

1. Install (and run) the container `goctl-env`.
```shell
cd goctl-env
/bin/bash create.sh
```
The Shell script `create.sh` will build and run a Docker container, and at the same time link the path `src/` in your project folder to the path `/go/src` in the Docker container. If no `/src` is created before, this folder will be automatically created.

2. (Exit and) Re-run the container
```shell
/bin/bash run.sh
```

3. Occasionally, some dependencies may not be installed correctly. In this case, re-run the following command in the created container.
```shell
goctl env check -i -f -v
```

4. Note that in the current setting, only the port 8081 is exposed to outside the Docker container. You can make changes on the ports you want to expose in the `Dockerfile` (and also the `create.sh`) under the folder `goctl-env`.

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
