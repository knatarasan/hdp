#https://github.com/ehiggs/spark-terasort



spark-submit --class com.github.ehiggs.spark.terasort.TeraGen --master yarn --deploy-mode cluster ~/spark-terasort-master/spark-terasort-1.1-SNAPSHOT-jar-with-dependencies.jar 10m hdfs:/tmp/spark-tera/in

#spark-submit --class com.github.ehiggs.spark.terasort.TeraSort --master yarn --deploy-mode cluster spark-terasort-1.1-SNAPSHOT-jar-with-dependencies.jar hdfs:/tmp/spark-tera/in hdfs:/tmp/spark-tera/out


#spark-submit --class com.github.ehiggs.spark.terasort.TeraValidate --master yarn --deploy-mode cluster spark-terasort-1.1-SNAPSHOT-jar-with-dependencies.jar hdfs:/tmp/spark-tera/out hdfs:/tmp/spark-tera/validate