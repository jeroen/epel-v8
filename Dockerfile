#FROM centos:centos8
FROM registry.centos.org/centos:8

RUN \
  yum upgrade -y && \
  yum -y install epel-release && \
  yum -y update epel-release && \
  yum -y module enable nodejs:13 --enablerepo=epel-testing --enablerepo=epel-testing-modular && \
  yum -y install v8-devel --enablerepo=epel-testing --enablerepo=epel-testing-modular
