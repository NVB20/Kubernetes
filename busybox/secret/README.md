There are 2 methods of getting a secret here:
1. take the secrtet from the secret file as an enviroment variable
2. mount the secret as a volume to the container

make sure to encode and decode the secret value with base64 when you need to
