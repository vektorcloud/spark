# Tiny Spark

[![Circle CI](https://circleci.com/gh/vektorcloud/spark.svg?style=svg)](https://circleci.com/gh/vektorcloud/spark)

Tiny [Apache Spark](spark.apache.com) on Alpine.

### Running a standalone cluster

    docker-compose up
    docker run --link spark_master_1:master --rm quay.io/vektorcloud/spark spark-submit --class org.apache.spark.examples.SparkPi --master spark://master:7077 file:///opt/spark/examples/jars/spark-examples_2.11-2.0.1.jar
