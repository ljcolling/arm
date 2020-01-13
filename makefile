NOW := $(shell  date '+%F_%H:%M:%S' )
REPO := 'lcolling/arm'

build: Dockerfile.hub
	echo build
	make .built

.built : Dockerfile.hub
		docker build -f Dockerfile.hub -t $(REPO) .
		echo 'Built on $(NOW)' > .built

push : .built
	echo push
	make .pushed

.pushed : .built
	echo Pushing built image to DocekrHub
	echo 'Pushed on $(NOW)' > .pushed
	docker push $(REPO)


binder : .pushed
	echo Creating binder Docker


run :
	docker run --rm -e PASSWORD=password -p 8787:8787 $REPO

clean :
	rm .built
	rm .pushed
