# pull images
docker pull mysql
docker pull phpmyadmin/phpmyadmin
docker pull eclipse-mosquitto

# for mqtt setting
mkdir config
nano config/mosquitto.conf

allow_anonymous false
listener 1883
listener 9001
protocol websockets
persistence true
password_file /mosquitto/config/pwfile
persistence_file mosquitto.db
persistence_location /mosquitto/data/


docker build -t name .
docker-compose -p myproject up -d

MQTT user/password setting
docker exec -it <container-id> sh
# Create new password file and add user and it will prompt for password
mosquitto_passwd -c /mosquitto/config/pwfile user1

# Add additional users (remove the -c option) and it will prompt for password
mosquitto_passwd /mosquitto/config/pwfile user2

# delete user command format
mosquitto_passwd -D /mosquitto/config/pwfile <user-name-to-delete>

# type 'exit' to exit out of docker container prompt

# test mqtt
apt install mosquitto-clients

mosquitto_sub -v -t 'hello/topic' -u user1 -P <password>
mosquitto_pub -t 'hello/topic' -m 'hello MQTT' -u user1 -P <password>
