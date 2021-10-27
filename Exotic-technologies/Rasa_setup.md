
To create a new virtual env:
  python3.7 -m venv 37Venv
Loob python 3.7 versiooniga virtuaalse keskkonna nimega 37Venv, kasutades juba installitud python 3.7.x versiooni

NG Rasa puhul on vaja ka osade tehnoloogiate lisa versioonid alla laadida

    pip install rasa==1.10.10
    pip install tensorflow==2.1.1
    pip install numpy==1.19


Kui on requirements.txt siis
    pip3 install -r requirements.txt


Et kontrollida kas ja mis versioonid:
  1. pip3 show rasa
  2. rasa --version
  3. rasa --v


Et näha kõiki installitud mooduleid:
  1. pkgutil --pkgs

To activate a virtualEnv:

  cd /Users/fred-andree/Documents/Repo/RasaTest
  source 37Venv/bin/activate

To exit a virtualEnv:
    deactivate

Rasa CMD:

    rasa init
    rasa train
    rasa run
