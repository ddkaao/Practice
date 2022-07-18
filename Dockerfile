FROM python:bullseye
COPY requirements.txt ./
COPY notebooks_Intro.ipynb ./
RUN pip install -r requirements.txt
RUN jupyter-nbconvert --execute notebooks_Intro.ipynb --to html 
