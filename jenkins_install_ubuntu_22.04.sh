#First, open a terminal window and update the system package repository by running:

sudo apt update
#To install OpenJDK 11, run:
sudo apt install openjdk-11-jdk -y
#Start by importing the GPG key. The GPG key verifies package integrity but there is no output. Run:

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

#2. Add the Jenkins software repository to the source list and provide the authentication key:

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

#Update the system repository one more time. Updating refreshes the cache and makes the system aware of the new Jenkins repository.

sudo apt update

#2. Install Jenkins by running:

sudo apt install jenkins -y

#To check if Jenkins is installed and running, run the following command:
sudo systemctl restart jenkins


#Open port 8080 by running the following commands:

sudo ufw allow 8080

sudo ufw status


