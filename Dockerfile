FROM apache/superset:4.1.1
# Switching to root to install the required packages
USER root
RUN apt-get update && apt-get upgrade -y &&	apt-get install -y curl links zip unzip basez python3-mysqldb python3-ldap python3-psycopg2 python3-psycopg2cffi &&	apt-get purge -y --auto-remove
RUN pip install --upgrade pip
RuN pip install mysql-connector-python
RUN pip install psycopg2-binary
RUN pip install prophet
RUN pip install Authlib
RUN pip install flask-appbuilder
# Switching back to using the `superset` user
USER superset

CMD ["/app/docker/docker-ci.sh"]
