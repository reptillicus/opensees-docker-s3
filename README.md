# Goals

Get opensees to use a FUSE mounted S3 file system for IO

run it with

   docker run -it  \ 
    -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY \
    -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
    --cap-add SYS_ADMIN \
    --device /dev/fuse \
    --security-opt apparmor:unconfined \
    reptillicus/opensees-goofys 


