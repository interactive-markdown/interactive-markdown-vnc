Server

```
docker pull interactivemarkdown/[your_environment]
docker build -t interactivemarkdown/[your_environment] .
docker run -d -p [local_proxy_port]:6080 interactivemarkdown/[your_environment]
```

Client

```
new VNC({
    hostname: '[local_host]',
    port: '[local_proxy_port]'
});
```

Building ENV

Dockerfile
```
FROM interactivemarkdown/base

# environment code goes here
ADD ./ruby_build_script.sh .
CMD ["./ruby_build_script.sh", "--url", "https://github.com/rails/rails"]
```

build_script.sh
```
#run all your build logic here

#then run the post_build default script:
/usr/local/im-vnc/docker/post_build.sh
```