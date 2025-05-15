# frontend/Dockerfile
FROM node:18-alpine

# 安装 pnpm
RUN npm install -g pnpm

WORKDIR /app

# 从项目根目录复制 package.json 和 pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./
RUN pnpm install

# 复制前端源代码和相关配置文件到镜像的 /app 目录中
COPY . .

EXPOSE 3000

CMD ["pnpm", "dev"]