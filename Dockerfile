# 基础镜像，选择一个适合你需求的Go版本镜像，这里以官方的Go 1.21为例
FROM golang:1.21

# 设置工作目录，在容器内创建一个目录用于存放项目代码
WORKDIR /app

# 将当前目录（群晖上的ZeroBot-Plugin项目目录）下的所有文件复制到容器内的工作目录/app下
COPY..

# 安装项目所需的依赖，这里假设项目是使用Go的标准模块管理工具（go mod），如果项目有其他依赖安装方式，请相应调整
RUN go mod download

# 构建项目，假设项目的入口文件是main.go，你需要根据实际情况调整
RUN go build -o zero-bot-plugin main.go

# 设置容器启动时要执行的命令，这里执行我们刚刚构建好的可执行文件
CMD ["./zero-bot-plugin"]
