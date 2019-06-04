echo "Start"
PS=`sudo docker ps --filter publish=8082 -q`
#echo "$PS"
if [ "$PS" != "" ]
then
	echo "Stoping container --"
	sudo docker stop "$PS"
	echo "Removing Previous Image --"
	sudo docker rmi $(sudo docker images s2-movie-info-service -q)
fi
echo "Creating Image..."
sudo docker build -t s2-movie-info-service .
echo "Staring container..."	
sudo docker run -it -d -p 8082:8082 s2-movie-info-service	
echo "End"
