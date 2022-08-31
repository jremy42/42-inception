#!/bin/sh
cd /
sed -i "44i       - targets: ['nodeexporter:9100']"      /etc/prometheus/prometheus.yml
exec '@'