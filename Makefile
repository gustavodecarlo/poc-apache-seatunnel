install-seatunnel:
	curl "https://archive.apache.org/dist/incubator/seatunnel/2.3.0/apache-seatunnel-incubating-2.3.0-bin.tar.gz" --output "apache-seatunnel-incubating-2.3.0-bin.tar.gz"
	tar -xzvf "apache-seatunnel-incubating-2.3.0-bin.tar.gz"
	rm -f apache-seatunnel-incubating-2.3.0-bin.tar.gz

install-plugins-seatunnel:
	cd apache-seatunnel-incubating-2.3.0; ./bin/install-plugin.sh

run-seatunnel-dummy-example:
	./apache-seatunnel-incubating-2.3.0/bin/seatunnel.sh \
		--config apache-seatunnel-incubating-2.3.0/config/v2.batch.config.template \
		-e local

get-source-open-nyc-taxi-data:
	curl https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2022-01.parquet --output data_source/yellow_tripdata_2022-01.parquet

run-spark-transformation-example:
	./apache-seatunnel-incubating-2.3.0/bin/start-seatunnel-spark-connector-v2.sh \
		--master local\[4\] \
		--deploy-mode client \
		--config spark.batch.transformation.conf

run-spark-see-agg-result-example:
	./apache-seatunnel-incubating-2.3.0/bin/start-seatunnel-spark-connector-v2.sh \
		--master local\[4\] \
		--deploy-mode client \
		--config spark.batch.agg.result.conf
