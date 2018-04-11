
dummy:

clean: clean-apt-now clean-i2pd

docker: docker-apt-now docker-i2pd

run: run-apt-now run-i2pd

clean-apt-now:
	docker rm -f apt-now; true

docker-apt-now:
	docker build -f Dockerfiles/Dockerfile.apt-now -t eyedeekay/apt-now .

network:
	docker network create apt-now; true

run-apt-now: network
	docker run \
		-d \
		--name apt-now \
		--network apt-now \
		--network-alias apt-now \
		--hostname apt-now \
		--link apt-now-i2pd \
		--cap-drop all \
		-p 127.0.0.1:45291:45291 \
		--restart always \
		-t eyedeekay/apt-now

clean-i2pd:
	docker rm -f apt-now-i2pd; true

docker-i2pd:
	docker build -f Dockerfiles/Dockerfile.apt-now-i2pd -t eyedeekay/apt-now-i2pd .

run-i2pd: network
	docker run \
		-d \
		--name apt-now-i2pd \
		--network apt-now \
		--network-alias apt-now-i2pd \
		--hostname apt-now-i2pd \
		--link apt-now \
		-p :4567 \
		-p 127.0.0.1:7068:7068 \
		--restart always \
		-t eyedeekay/apt-now-i2pd

surf:
	surf http://127.0.0.1:45291
