docker build -t gaugan .
docker run -it -dp 6006:6006 --gpus all gaugan  