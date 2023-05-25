set +e
set -x

echo "Creating the run image"
pack build nodejs-fn-dev --builder gcr.io/gae-runtimes/buildpacks/google-gae-22/nodejs/builder \
-e GOOGLE_DEVMODE=1

echo "Creating a volume"
docker volume create --name nodemodules

echo "Starting the container"
docker run -d -u root \
 -v `pwd`:/workspace \
 -v nodemodules:/workspace/node_modules \
 --rm -p 8080:8080 --name nodejs-fn-dev nodejs-fn-dev

echo "run ./cmd.sh to get a shell into the running container"