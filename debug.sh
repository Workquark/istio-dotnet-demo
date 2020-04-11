docker rm -f test
docker rmi -f joydeep1985/expense
docker system prune --force
dotnet publish -c Release -o release
docker build -t joydeep1985/expense . --no-cache
docker run -d -p 80:80 --name test joydeep1985/expense

echo -e "\n------------------ SLEEP 5 Seconds-----------------------------";

sleep 5
for i in {1..3};do echo -e "\n";done;
echo -e "----------------curl : localhost/weatherforecast------------------------"
curl localhost/weatherforecast


for i in {1..3};do echo -e "\n";done;
echo -e "----------------curl : localhost/status ( health) ----------------------"
curl localhost/status -i

for i in {1..3};do echo -e "\n";done;
echo -e "----------------curl : localhost/status/healthz ( health) ----------------------"
curl localhost/status/healthz -i

echo -e "\n"

docker stop $1