$rabbitMqPath = App-Path Bench.RabbitMQ

Start-Process "$rabbitMqPath\rabbitmq-server.bat"

echo "Waiting 10s for the broker to boot ..."
[Threading.Thread]::Sleep(10000)

echo "Activating Web UI ..."
& "$rabbitMqPath\rabbitmq-plugins.bat" enable rabbitmq_management

echo "Killing the broker ..."
& "$rabbitMqPath\rabbitmqctl.bat" stop
