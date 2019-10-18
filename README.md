# Tiny Spark

![circleci][circleci]


Tiny [Apache Spark](spark.apache.com) on Alpine.

### Running a standalone cluster

    docker-compose up
    docker run --link spark_master_1:master --rm quay.io/vektorcloud/spark spark-submit --class org.apache.spark.examples.SparkPi --master spark://master:7077 file:///opt/spark/examples/jars/spark-examples_2.11-2.0.1.jar

[circleci]: https://img.shields.io/circleci/build/gh/vektorcloud/spark?color=1dd6c9&logo=CircleCI&logoColor=1dd6c9&style=for-the-badge "spark"
