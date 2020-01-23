# ecommerce-config-server

This Config server provides server-side and client-side support for externalized configuration in this distributed e-commerce system

# Command to create a Keystore for Asymmetric Encryption

keytool -genkeypair -alias configEncrytpionKey -keyalg RSA -dname "CN=ecommerce microservices, OU=App Development, O=App Development,L=Pune,S=MH,C=IN" -keypass password -keystore configEncrytpionKey.jks -storepass password
