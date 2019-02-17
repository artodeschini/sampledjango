MANAGE=python manage.py
TEST_SETTINGS=project.settings.test

.PHONY: all help deps static migrate restart update deploy

all: help

help:
        @echo "Usage:"
        @echo "  make update - update application"
        @echo "  make deploy - pull and deploy the update"
        @echo "  make test - run automated tests"

staticfiles/css/style.css:
        sassc --style 'compressed' staticfiles/sass/style.scss > $@

deps:
        pip install -r requirements.txt

static:
        $(MAKE) staticfiles/css/style.css
        $(MANAGE) collectstatic --noinput

migrate:
        $(MANAGE) migrate

restart:
        sudo restart app

update: migrate static

deploy:
        git pull --ff-only
        $(MAKE) deps
        $(MAKE) update
        $(MAKE) restart

test:
        $(MANAGE) test $(TEST_SETTINGS)