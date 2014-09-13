#!/bin/bash

# DJATOKA
cd /freelib-djatoka
nohup mvn jetty:run-forked &

exec supervisord -n
