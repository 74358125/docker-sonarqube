[![logo](https://raw.githubusercontent.com/pascalgrimaud/docker-sonarqube/master/sonar.png)]
(https://www.sonarqube.org/)


[![Circle CI](https://circleci.com/gh/pascalgrimaud/docker-sonarqube.svg?style=svg)]
(https://circleci.com/gh/pascalgrimaud/docker-sonarqube)


# Information

The base docker image :

  * [pascalgrimaud/ubuntu](https://registry.hub.docker.com/u/pascalgrimaud/ubuntu/)

The GitHub project :

  * [pascalgrimaud/docker-sonarqube](https://github.com/pascalgrimaud/docker-sonarqube/)


# Installation

You can clone this project and build with docker command :

```
git clone https://github.com/pascalgrimaud/docker-sonarqube.git
cd docker-sonarqube
docker build -t pascalgrimaud/sonarqube:5.1 .
```

You can build directly from the [GitHub project](https://github.com/pascalgrimaud/docker-sonarqube/) :

```
docker build -t pascalgrimaud/sonarqube:5.1 github.com/pascalgrimaud/docker-sonarqube.git
```


# Usage

Quick start with binding to port 9000 and random password :

```
docker run -d -p 9000:9000 pascalgrimaud/sonarqube:5.1
```

To get the password :

```
docker logs <id>
```

# Usage with volumes
