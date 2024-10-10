# 使用官方的 Nginx 映像
FROM nginx:alpine

# 把你自訂的 Nginx 配置拷貝到容器中的 Nginx 配置路徑
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 保留 /usr/share/nginx/html 作為 Nginx 服務靜態文件的目錄
