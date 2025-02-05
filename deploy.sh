 
# New deployment process
echo "⚙️ Building the Docker image..."
docker build -t custom-nginx .

# Docker login with new credentials
docker login -u ragavit -p qwerty786qwerty786

# Tag the new image
docker tag custom-nginx ragavit/docker_jenkins

# Push the new image
echo "🚀 Pushing the Docker image to Docker Hub..."
docker push ragavit/docker_jenkins

# Run the container on port 80
echo "🔥 Running the Docker container on port 80..."
docker run -d -p 90:80 --name custom-nginx-container ragavit/docker_jenkins

echo "✅ Deployment completed successfully!"
