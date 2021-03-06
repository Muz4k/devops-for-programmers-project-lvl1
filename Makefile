server:
	npx nodos server

test:
	npm -s test

dev-up:
	docker-compose build
	docker-compose up -d
prod-up:
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml up -d

push-image:
	docker build . -f Dockerfile.production -t 3102033310121/devops-for-programmers-project-lvl1
	docker push 3102033310121/devops-for-programmers-project-lvl1:latest

test-image:
	docker run -e NODOS_HOST=0.0.0.0 -p 8080:8080 3102033310121/devops-for-programmers-project-lvl1:latest

