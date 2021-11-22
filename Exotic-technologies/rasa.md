# Rasa

## Rasa setup

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




## sara help-me

https://github.com/RasaHQ/rasa-demo

Installation
To install Sara, please clone the repo and run:

cd rasa-demo
make install
This will install the bot and all of its requirements. Note that this bot should be used with python 3.6 or 3.7.

🤖 To run Sara:
Use rasa train to train a model (this will take a significant amount of memory to train, if you want to train it faster, try the training command with --augmentation 0).

Then, to run, first set up your action server in one terminal window:

rasa run actions --actions actions.actions
There are some custom actions that require connections to external services, specifically SubscribeNewsletterForm and SalesForm. For these to run you would need to have your own MailChimp newsletter and a Google sheet to connect to. See the development section for instructions on providing credentials for external services.

In another window, run the bot:

docker run -p 8000:8000 rasa/duckling
rasa shell --debug
Note that --debug mode will produce a lot of output meant to help you understand how the bot is working under the hood. To simply talk to the bot, you can remove this flag.

If you would like to run Sara on your website, follow the instructions here to place the chat widget on your website.

To test Sara:
After doing a rasa train, run the command:

rasa test nlu -u test/test_data.json --model models
rasa test core --stories test/test_stories.md
👩‍💻 Overview of the files
data/core/ - contains stories

data/nlu - contains NLU training data

actions - contains custom action code

domain.yml - the domain file, including bot response templates

config.yml - training configurations for the NLU pipeline and policy ensemble
