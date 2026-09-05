# Deploy and Host RabbitMQ with Railway

RabbitMQ is a widely used open source message broker. This template gives you a ready broker with the Management UI, persistent storage, and generated credentials. Click Deploy and start publishing messages.

## About Hosting RabbitMQ

Hosting RabbitMQ means running the broker process, keeping queue data on disk, exposing AMQP for apps, and exposing the Management UI for operators. This template uses the official `rabbitmq:4-management-alpine` image, mounts a volume at `/var/lib/rabbitmq`, pins the node name so data survives redeploys, and publishes the Management UI on a Railway domain. Username and password are generated at deploy time. No extra services are included.

## Common Use Cases

* Background job queues
* Service to service messaging
* Fanout and topic routing
* Work queues with acknowledgements
* Local style RabbitMQ in production without server babysitting

## Dependencies for RabbitMQ Hosting

* Official RabbitMQ Docker image with the management plugin
* A Railway volume for `/var/lib/rabbitmq`
* Railway private networking for AMQP between services
* A Railway public domain for the Management UI

### Deployment Dependencies

* [RabbitMQ](https://www.rabbitmq.com/)
* [Official RabbitMQ image](https://hub.docker.com/_/rabbitmq)
* [pagetree/RabbitMQ](https://github.com/pagetree/RabbitMQ)

### Why Deploy RabbitMQ on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying RabbitMQ on Railway, you are one step closer to supporting a complete full-stack application.
