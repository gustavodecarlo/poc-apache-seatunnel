# poc-apache-seatunnel

POC of Apache Seatunnel next-generation high-performance, distributed, massive data integration framework

## Points of interest

- Understand this framework
- How to use
- Problems

## POC scenario

### Attention

- Only testing local mode

### Requires

- Apache Spark
- Apache Seatunnel

### Scenario

Using the local machine to test Apache Seatunnel. Tests 3 scenarios:

- Dummy use with a simple running batch console apache spark and seatunnel engine
- Using local file batch pipeline save a aggregate result and see this result

### How to reproduce

In your local machine you need to installed `Apache Spark` and setup the env var `SPARK_HOME`. To works with seatunnel need to be a spark version `< 3.0.0` because of v2 api of spark.

First step install seatunnel and follow the commands:

```
make install-seatunnel
make install-plugins-seatunnel
```

After the instalation need change the file `config/seatunnel-env.sh` with `SPARK_HOME` or `FLINK_HOME` envs var configuration path.

To reproduce the project current examples need to create `data_source` and `warehouse` folder in root of git project folder and run follow commands.

```
make get-source-open-nyc-taxi-data
make run-seatunnel-dummy-example
make run-spark-transformation-example
make run-spark-see-agg-result-example
```

### Results

- [POC results](RESULTS.md)


## References

- [Apache Seatunnel Home](https://seatunnel.apache.org/)
- [Apache Seatunnel Github](https://github.com/apache/incubator-seatunnel)
- [Medium Post: Apache Open-source Projects in Modern Data Stacks](https://medium.com/@ApacheDolphinScheduler/apache-open-source-projects-in-modern-data-stacks-64715c53f6cd)
- [NYC Taxi Open Data](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page)
