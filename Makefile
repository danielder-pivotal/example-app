build:
	go build -v -i

test:
	go test -v

image:
	pack build kontinue/example

deploy:
	kapp deploy -c -a example -f ./kubernetes.yaml
delete:
	kapp delete -a example