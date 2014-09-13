Djatoka
=====

Exposes Djatoka on port 8888.

Build:

```
./build.sh
```

Run:

```
./run.sh
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
