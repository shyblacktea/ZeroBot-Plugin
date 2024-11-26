# 使用官方 Python 基础镜像
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 拷贝项目文件到容器中
COPY . /app

# 安装项目依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露服务端口（根据 ZeroBot 的配置修改，假设默认端口为 8080）
EXPOSE 8080

# 启动命令（假设通过 main.py 启动）
CMD ["python", "main.py"]
