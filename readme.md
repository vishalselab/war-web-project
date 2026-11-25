# 1. Open EC2 Instance Connect (Black Terminal)

# 2. Update packages
sudo apt update

# 3. Install Java 17
sudo apt install openjdk-17-jdk -y

# 4. Verify Java
java -version
javac -version

# 5. Install Maven
sudo apt install maven -y

# 6. Verify Maven
mvn -version

# 7. Install Git
sudo apt install git -y

# 8. Verify Git
git --version

# 9. Clone GitHub repository
git clone https://github.com/vishalselab/war-web-project.git

# 10. Enter project folder
cd war-web-project

# 11. Build WAR file
mvn clean package

# 12. Go to temporary directory
cd /tmp

# 13. Download Tomcat 9
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.124/bin/apache-tomcat-9.0.124.tar.gz

# 14. Extract Tomcat
tar -xvzf apache-tomcat-9.0.124.tar.gz

# 15. Move Tomcat to installation directory
sudo mv /tmp/apache-tomcat-9.0.124 /opt/tomcat

# 16. Start Tomcat
sudo /opt/tomcat/bin/startup.sh

# 17. Deploy WAR file
sudo cp /home/ubuntu/war-web-project/target/wwp-1.0.0.war /opt/tomcat/webapps/

# 18. Verify deployment
ls /opt/tomcat/webapps/
