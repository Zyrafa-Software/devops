cert_key="local_cluster_mongodb.pem"
cert_ca="local_cluster_ca.pem"

openssl req -x509 \
            -nodes \
            -sha256 \
            -days 1825 \
            -newkey rsa:2048 \
            -keyout certs/$cert_key \
            -out certs/$cert_ca \
            -subj "/C=PL/ST=Mazovia/L=Warsaw/O=flashbong/OU=DevOps/CN=zyrafa-tst01/emailAddress=tst@gmail.com"

ec=$?
if [ $ec -ne 0 ]; 
then
    echo "Script has failed to generate a new keypair. Exit code was ${ec}"
else
    echo 'Key and self-signed CA for mongoDB have been created inside the certs directory.'
fi
