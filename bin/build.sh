#!/bin/sh
go get github.com/jteeuwen/go-bindata/...
go generate
go get -d ./...
CGO_ENABLE=0 gox -ldflags '-w -s' -output='build/myip_{{.OS}}_{{.Arch}}'
