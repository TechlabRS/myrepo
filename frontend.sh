yum install nginx -y &>>/tmp/run.log

systemctl enable nginx 

rm -rf /usr/share/nginx/html/* &>>/tmp/run.log

curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip &>>/tmp/run.log

cd /usr/share/nginx/html &>>/tmp/run.log
unzip /tmp/frontend.zip &>>/tmp/run.log

cp /src/robo.conf /etc/nginx/default.d/roboshop.conf &>>/tmp/run.log

systemctl restart nginx &>>/tmp/run.log
