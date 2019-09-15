from jenkins/jenkins:2.176.3

# Distributed Builds plugins
RUN /usr/local/bin/install-plugins.sh ssh-slaves

# install Notifications and Publishing plugins
RUN /usr/local/bin/install-plugins.sh email-ext
RUN /usr/local/bin/install-plugins.sh mailer
RUN /usr/local/bin/install-plugins.sh slack

# Artifacts
RUN /usr/local/bin/install-plugins.sh htmlpublisher

# UI
RUN /usr/local/bin/install-plugins.sh greenballs
RUN /usr/local/bin/install-plugins.sh simple-theme-plugin

# Scaling
RUN /usr/local/bin/install-plugins.sh kubernetes

# Pipeline
RUN /usr/local/bin/install-plugins.sh pipeline-github

# Workflow Job
RUN /usr/local/bin/install-plugins.sh workflow-job

# install Maven
USER root
RUN apt-get update && apt-get install -y maven
USER jenkins
