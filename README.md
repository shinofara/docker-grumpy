# Usage

Compile Python Code to Go

```
$ docker run --rm -v ${PWD}:/work shinofara/docker-grumpy grumpc hello.py > hello.go
```

Build a binary

```
$ docker run --rm -v ${PWD}:/work shinofara/docker-grumpy go build -o hello hello.go
$ docker run --rm -e "GOOS=darwin" -e GOARCH=amd64 -v ${PWD}:/work shinofara/docker-grumpy go build -o hello hello.go
```