run: build
	./scripts/filewatch.sh

build: install
	if ! docker image inspect resume-builder > /dev/null 2>&1; then \
		docker build -t resume-builder . ; \
	fi

install:
	sudo apt-get install inotify-tools

init:
	./scripts/init.sh
