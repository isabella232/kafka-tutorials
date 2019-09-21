alias produce='docker exec -it schema-registry /usr/bin/kafka-avro-console-producer --broker-list localhost:9092 --topic input-topic $1 --property value.schema="$(< src/main/avro/pressure-alert.avsc)"'
touch out.txt && nohup tail -f out.txt | produce &