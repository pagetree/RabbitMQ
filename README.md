# RabbitMQ — One Click

> Deploy a fully configured RabbitMQ message broker with Management UI on Railway in one click.

## What you get

* RabbitMQ (official image, management plugin enabled)
* Management UI on a public Railway domain
* Persistent volume for queue and broker data
* Automatically generated username and password
* AMQP access over Railway's private network
* Zero required configuration

## Deploy

Click the button, wait for the build to finish, then open the generated domain. RabbitMQ is ready immediately, no variables to fill in.

## Variables (generated automatically)

| Variable | Description |
| --- | --- |
| `RABBITMQ_DEFAULT_USER` | Generated username |
| `RABBITMQ_DEFAULT_PASS` | Generated password |
| `RABBITMQ_HOST` | Private network hostname |
| `RABBITMQ_PORT` | AMQP port (`5672`) |
| `RABBITMQ_URL` | Full AMQP connection string |
| `RABBITMQ_MANAGEMENT_URL` | Public Management UI URL |

## Connecting

From another service in the same Railway project, over the private network:

```text
amqp://user:pass@rabbitmq.railway.internal:5672
```

Or just reference the generated variable directly in your app:

```text
${{ RabbitMQ.RABBITMQ_URL }}
```

## Data persistence

A volume is mounted at `/var/lib/rabbitmq`. Queues, exchanges, and messages survive restarts, redeploys, and image updates.

## Not included

No database, no application code, no custom frontend, no auth layer, no monitoring stack. Just RabbitMQ.
