# build docker images
echo Building base image from OpenWhisk Swift3 Action
(cd swift3Action; docker build -t swift3action:base .)
echo Building base image from OpenWhisk Swift3 Action
(cd swift311Action; docker build -t swift311action:base .)

echo Building Swift Playground enabled version of OpenWhisk Swift3 Action
docker build -t swift3action:playground .

echo Building Swift Playground enabled experimental version of OpenWhisk Swift3.1.1 Action

docker build --build-arg BASE_IMG=swift311action:base -t swift311action:playground .
