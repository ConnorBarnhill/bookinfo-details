#!/bin/bash
#plain build -- no calling external book service to fetch topics
docker build -t "istio/examples-bookinfo-details-v1:${VERSION}" -t istio/examples-bookinfo-details-v1:latest --build-arg service_version=v1 .
#with calling external book service to fetch topic for the book
docker build -t "istio/examples-bookinfo-details-v2:${VERSION}" -t istio/examples-bookinfo-details-v2:latest --build-arg service_version=v2 \
    --build-arg enable_external_book_service=true .
