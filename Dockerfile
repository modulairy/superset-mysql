FROM apache/superset
# Switching to root to install the required packages
USER root

RUN pip install mysql-connector-python

# Switching back to using the `superset` user
# USER superset
