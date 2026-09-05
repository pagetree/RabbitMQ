FROM rabbitmq:4-management-alpine

# Pin the node name so the Mnesia data directory stays stable across
# redeploys. Railway assigns a new random container hostname on every
# deploy, and RabbitMQ's default node name is derived from that hostname.
# Without this, the persistent volume ends up orphaned under a node name
# that no longer exists after each redeploy, and all queues/messages
# appear to vanish even though the volume itself is untouched.
ENV RABBITMQ_NODENAME=rabbit@localhost
