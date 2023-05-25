This is a sample project to show how the get a local dev setup with hot reload for a NodeJS
based Google Cloud Function. After cloning, you can run the following commands:

```bash
$ ./start.sh
```

This command builds an image and starts the container, mapping to port 8080 on your host.
You can execute the function using `curl` as follows:

```bash
$ curl http://localhost:8080
```

If you make local changes to your code, the code will hot reload. To get a shell into the
running container, you can run the following:

```bash
$ ./cmd.sh
```

You can run your typical shell commands here. These commands will run inside the container.
