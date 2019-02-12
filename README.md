# Note of start a project in django

## Requeirement 
- Python 3
- pyenv
- pip
- pyCharm
- poedit
- fun
- Django

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
na engrenagem add selecionar a versao