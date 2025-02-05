
echo hi123
sh 'chmod +x build.sh'
sh './build.sh'
# Docker login with new credentials
docker login -u ragavit -p qwerty786qwerty786
# Tag the new image
docker tag test ragavit/docker_jenkins
# Push the new image
docker push ragavit/docker_jenkins
# Run the container on port 80
echo "🔥 Running the Docker container on port 80..."
docker run -d -p 90:80 --name custom-nginx-container ragavit/docker_jenkins
     
