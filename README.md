# fae-service-discovery
Service discovery for communication between the microservices and to detect new ms-instances
We are using spring-boot cloud eureka starter to build a simple service discovery.

## Usage

The project could be started in three different environments:

1. local
2. development
3. production

### LOCAL
For local development you can just run the project within your IDE.
The default and local configuration will be used. Register a service can be done with the url:
"localhost:8761"

### DEV
For development of other service you can run this project in development mode. There two scripts will help you start 
and stop the service in docker. These script pull the image from our docker registry and start the container.
Your service can register to the service discovery on "eureka-1:8761" also make your your service is in the 
"fae_backend" network.

### PROD
IN our production env. YOu just have to connect your service to the service discovery.
The production mode will start two containers to ensure one is always up. Please specify both in your configuration.
The DNS names for the docker containers are: "eureka-1:8761", "eureka-2:8761" also make your your service is in the 
"fae_backend" network.
