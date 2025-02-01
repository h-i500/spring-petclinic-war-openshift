FROM icr.io/appcafe/open-liberty:23.0.0.9-full-java17-openj9-ubi

# server.xmlをコンテナにコピーする場合
COPY ./src/main/liberty/config/server.xml /config/server.xml

# WARファイルをコンテナのdropinsディレクトリにコピー
COPY ./target/liberty-spring-petclinic.war /config/dropins/liberty-spring-petclinic.war

## WARファイル生成
# mvn clean package

## podman実行コマンド
# podman build -t liberty-spring-petclinic .
# podman run -d -p 9080:9080 liberty-spring-petclinic
# curl http://localhost:9080/liberty-spring-petclinic/ 