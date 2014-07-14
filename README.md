Djatoka
=====

Exposes Djatoka on port 8888.

Build:

```
docker build -t dts/djatoka:latest .
```

Run:

```
docker run -d -p 8888:8888 --name djatoka dts/djatoka:latest # background
```

From within the container:

```
docker run -i -t -p 8888:8888 --name djatoka dts/djatoka:latest /bin/bash
./setup.sh &
```

---

Update config as per?

https://github.com/ksclarke/freelib-djatoka

---
