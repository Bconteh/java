FROM java8

ENV ProjectDir /var/data

ADD / ProjectDir

RUN apt-get -y update && install git \
	| apt-get install -y net-tools \ 
 	| apt-get install -y curl

EXPOSE 8080


ENTRYPOINT ["javac", "mycar.jar"]
