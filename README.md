# RabbitMQ One Click

> Deploy a fully configured RabbitMQ message broker with Management UI on Railway in one click.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template/rabbitmq-one-click)

Template page: https://railway.com/deploy/rabbitmq-one-click

## What you get

* RabbitMQ (official image, management plugin enabled)
* Management UI on a public Railway domain
* Persistent volume for queue and broker data
* Automatically generated username and password
* AMQP access over Railway's private network
* Zero required configuration

## Deploy

Click the button. Do not fill in any variables. Wait for RabbitMQ to start, then open the generated domain.

## Variables (generated automatically)

| Variable | Description |
| --- | --- |
| `RABBITMQ_DEFAULT_USER` | Generated username |
| `RABBITMQ_DEFAULT_PASS` | Generated password |
| `RABBITMQ_HOST` | Private network hostname |
| `RABBITMQ_URL` | Full AMQP connection string |
| `RABBITMQ_MANAGEMENT_URL` | Public Management UI URL |
| `RABBITMQ_NODENAME` | Pinned so the volume survives redeploys |

AMQP listens on `5672`. The Management UI listens on `15672`.

## Connecting

From another service in the same Railway project:

```text
${{ RabbitMQ.RABBITMQ_URL }}
```

That resolves to an AMQP URL on the private network, for example:

```text
amqp://user:pass@rabbitmq.railway.internal:5672
```

## Data persistence

A volume is mounted at `/var/lib/rabbitmq`. Queues, exchanges, and messages survive restarts, redeploys, and image updates.

## Not included

No database, no application code, no custom frontend, no auth layer, no monitoring stack. Just RabbitMQ.
