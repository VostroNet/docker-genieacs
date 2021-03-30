
export TARGET_URI=${TARGET_URI:-"http://0.0.0.0:80"}
export BASIC_AUTH_PATH=${BASIC_AUTH_PATH:-"/etc/nginx/pwd/auth"}

cat <<EOF > /etc/nginx/conf.d/default.conf
server {
	listen 0.0.0.0:80;
	location / {
		proxy_pass $TARGET_URI;
		proxy_set_header Authorization "";
		auth_basic "Restricted";
		auth_basic_user_file ${BASIC_AUTH_PATH};
	}
}
EOF

nginx -g "daemon off;"