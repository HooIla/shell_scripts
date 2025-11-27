img=$(sudo docker load -i face.tar | awk '/Loaded image ID:/{print $4}')
sudo docker tag "$img" face:v1.0
sudo docker run -d --name face --gpus all --net=host --privileged --restart always -w /root/PortraitCV face:v1.0 bash start_sync.sh
sudo docker ps 
echo -e "\n========================================"
echo -e "Face(docker) deployment completed.
echo -e "========================================\n"