FROM quay.io/vektorcloud/oracle-jre:latest

ENV SPARK_HOME="/opt/spark"
ENV SPARK_VERSION="2.0.1"
ENV HADOOP_VERSION="2.7"
ENV PATH="$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin"

WORKDIR "$SPARK_HOME"

EXPOSE 18080 8080 8081 7077 6066 4040

RUN curl -Ls "http://d3kbcqa49mib13.cloudfront.net/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz" | tar zxvf - -C "$SPARK_HOME" --strip=1

RUN apk add --no-cache python3 && \
  curl https://bootstrap.pypa.io/get-pip.py | python3 && \
  ln -sv /usr/bin/python3 /usr/bin/python  # Only support python3 to reduce image size


CMD ["spark-class", "org.apache.spark.deploy.master.Master"]
