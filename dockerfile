# 使用官方 Python 运行时作为父镜像
FROM python:3.9-slim-buster

# 设置工作目录
WORKDIR /app

# 将当前目录内容复制到容器中的 /app 目录
COPY . /app

# 安装阿里云 SDK 及其依赖
RUN pip install --no-cache-dir -r requirements.txt

# 设置环境变量
ENV ALIBABA_CLOUD_ACCESS_KEY_ID=${ALIBABA_CLOUD_ACCESS_KEY_ID}
ENV ALIBABA_CLOUD_ACCESS_KEY_SECRET=${ALIBABA_CLOUD_ACCESS_KEY_SECRET}

# 定义运行时执行的命令
CMD [ "python", "your_script.py" ]
