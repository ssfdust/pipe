# sudo podman run -p 3000:3000 -u ${UID} -ti -v "$(pwd):/go/src/github.com/88250/pipe/" pipe-front-dev bash -c "cd console && yarn install"
# sudo podman run --name pipe-front-dev --rm -p 3000:3000 -e HTTPS_PROXY=http://10.94.1.1:1081 -u ${UID} -ti -v "$(pwd):/go/src/github.com/88250/pipe/" pipe-front-dev bash -c "cd console && yarn add vditor@3.8.4"
sudo podman run --rm --pod new:pipe --name pipe-front-dev -p 3000:3000 -p 5897:5897 -u ${UID} -ti -v "$(pwd):/go/src/github.com/88250/pipe/" pipe-front-dev bash -c "cd console && npm run dev"
sudo podman run --rm --pod pipe --name pipe-go-dev -u ${UID} -ti -v "$(pwd):/go/src/github.com/88250/pipe/" pipe-go-dev /go/bin/gin --port 5897 --appPort 5898 main.go
