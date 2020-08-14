FROM java:8
MAINTAINER tyrande <errmao@aliyun.com>

ADD tyrande-job-1.0.0.jar /data/tyrande-job-1.0.0.jar

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

ENTRYPOINT ["java","-jar","/data/tyrande-job-1.0.0.jar"]