# Results POC Apache Seatunnel

<div align="left">
  <img src="https://camo.githubusercontent.com/4abcd6fb7733e4876f75e65b1304474437e1f6f7ecb7b8d9f5b1553779ad2c72/68747470733a2f2f73656174756e6e656c2e6170616368652e6f72672f696d6167652f6c6f676f2e706e67" alt="Apache Seatunnel Logo" width="200" />
</div>

## First view
- It a incubating project at this moment and have a lot of good evolutions to come in future.
- Use a property project seatunnel engine and the 2 principal open source frameworks as processing engine: `Apache Spark` and `Apache Flink`.
- Not compatible with recents spark version, only spark `< 3.0.0` and have data v2 api.
- Try to Have a good initial connectors to the principal open source tools like apache iceberg, apache druid, apache doris and etc.
- Tried to test the kubernetes documentation [kubernetes documentation](https://seatunnel.apache.org/docs/2.3.0/start-v2/kubernetes/), but for arm chipset don't have a flink 1.13 version. Have some issues in github of seatunnel to upgrade the flink version. Need to wait the upgrade.

## Pros
- Open framework for declarative pipelines for stream and batch
- Simple declarative file to construct the pipelines based in source, transformation and sink
- Kubernetes possibility to run payloads (built-in with Flink)
- Have SQL trasformation possibility
- Have UDF (User defined functions) definition [reference](https://seatunnel.apache.org/docs/2.3.0/transform/udf)
- Have a way to develop the connector's [blog post](https://seatunnel.apache.org/blog/2022/09/20/A-tutorial-to-help-you%20develop-a-SeaTunnel-Connector-hand-by-hand-while-avoiding%20-pitfalls)

## Cons
- Have few connector to Cloud Storage and warehouses at this moment.
- Only UDF in Flink
- Based only in 2 frameworks of big data
- A few types os built-in transformations
- The latest version not have connector to the principals lakehouses api's