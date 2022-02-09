build:
	docker build -t eb_cli -f Dockerfile .

shell:
	docker run -ti eb_cli /bin/bash --login
