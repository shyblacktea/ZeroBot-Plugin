# 使用较新的 Python 运行环境
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 拷贝项目文件到容器中
COPY . /app

# 安装 pip 和基本依赖
RUN pip install --no-cache-dir --upgrade pip

# 安装项目依赖
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 暴露服务运行的端口（假设为 8080，具体查看项目文档）
EXPOSE 8080

# 启动服务（假设服务启动文件为 main.py）
CMD ["python", "main.py"]
