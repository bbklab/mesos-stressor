
IMG="busybox"
IMG="offlineregistry.dataman-inc.com:5000/library/blackicebird-2048"

deault: build

build:
	# env GOOS=darwin go build -o stressor .
	go build -o stressor .

run: build
	./stressor 192.168.1.196 100 10  ${IMG}

clean:
	rm -rfv stressor
