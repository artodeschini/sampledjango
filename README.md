# Note of start a project in django

## Requeirement 
- Python 3
- pyenv
- pip
- pyCharm
- poedit
- fun
- Django
- SQLite
- Db Browser to SQLite

## pyenv
```bash
$ brew update
$ brew install pyenv
```

## install python 3.6.6
```bash
pyenv install 3.6.6
pyenv virtualenv 3.6.6 django-env
pyenv activate django-env

python --version

pip install Django==2.1.7
```

## start a new project with django
```bash
# django-admin starproject sample
django-admin starproject sampledjango
```

## open the diretory with pycharm
configure pycharm project

PyCharm > Preferences > Project 
interpleter
add virtualenv

## try if works
```bash
cd sampledjango/
python manage.py runserver

# open in your browser http://127.0.0.1:8000/

# if I want to change de port
python manage.py runserver 5555
```

## create a module in django project 
execute the command inside of package of project
in the same folder there is manage.py
```bash



```

## create a database of app
python manage.py makemigrations
python manage.py migrate

## create a super user
python manage.py