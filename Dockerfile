FROM python:3.7.7-slim

LABEL "com.github.actions.name"="GitHub Action to run Python unit tests."
LABEL "com.github.actions.description"="Run python unit tests using pytest on python 3.7.7-slim docker image."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="https://github.com/RMajewski/python-unit-tests"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="René Majewski <rene.majewski@gmx.de>"

# Install pip upgrade
RUN pip install --upgrade pip

# Installation of pytest
COPY ./test_requirements.txt /test_requirements.txt
RUN pip install -r /test_requirements.txt
RUN rm /test_requirements.txt

# Entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
