FROM debian:jessie

# I'm running this on an Odroid.  To do that use this base image instead:
# FROM armhfbuild/debian:jessie

RUN apt-get update && apt-get install -y python2.7 python-requests libssl1.0.0

COPY autoduo /

ENTRYPOINT ["python", "/autoduo"]
