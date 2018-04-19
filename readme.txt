### Step 1
docker login 
username: alfeosilvestro

### Step 2
docker build -t metalpolis .


### Step 3
docker run --net=host -p 8080:80 --name metalpolis_web -d metalpolis



sudo git pull https://github.com/alfeosilvestro/budgetmetal.git