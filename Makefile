default: clean
	@git clone https://github.com/google/grumpy

build: default
	@docker build -t shinofara/docker-grumpy .
	$(MAKE) clean

clean:
	@rm -rf grumpy
