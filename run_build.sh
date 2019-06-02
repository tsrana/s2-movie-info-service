echo "Start"
PS=`sudo docker ps --filter publish=8082 -q`
echo "$PS"
if [ "$PS" != "" ]
then
	echo "Stoping container --"
	sudo docker stop "$PS"
fi
echo "Staring container..."	
sudo docker run -it -d -p 8082:8082 s2-movie-info-service	
echo "End"
