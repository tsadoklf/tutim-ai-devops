ARG TERRAFORM_VERSION="0.14.11"
FROM hashicorp/terraform:${TERRAFORM_VERSION} as terraform

FROM amazon/aws-cli
COPY --from=terraform /bin/terraform /bin/terraform

RUN yum update -y && yum install -y \
    nano \
    curl \
    openssl \
    jq \ 
    git \
    tar \
    openssh openssh-clients

# 
# install kubectl
# 
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# 
# install helm
# 
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && \
        chmod 700 get_helm.sh && \
        ./get_helm.sh


# RUN yum update -y && yum install -y \
#     nano \
#     curl \
#     net-tools \
#     netcat \
#     bind-utils \
#     openssl \
#     jq \
#     sudo \
#     unzip \
#     less \
#     groff \
#     && rm -rf /var/cache/yum

# command   ==> package
# ---------------------------------
#  nc       ==> nmap-ncat
# pstree    ==> psmisc

# package   ==> commands
# ---------------------------------
# procps    ==> ps, top, uptime, w
# iproute   ==> ip, ss, bridge, tc, etc.
# net-tools ==> arp, ifconfig, netstat, rarp, nameif, route, etc.
# iputils   ==> ping, ping6, arping, clockdiff, ninfod, tracepath, tracepath6, traceroute6, etc.
# bind-utils ==> dig, host, nslookup, nsupdate, etc.
# nmap-ncat ==> nc, ncat
# traceroute ==> traceroute, traceroute6
# openssh   ==> openssh (???)
# openssh-clients ==> ssh, scp, sftp, ssh-add, ssh-agent, ssh-keygen, ssh-keyscan, ssh-keysign, ssh-pkcs11-helper, sshd, sshd_config

# OPTIONAL
# psmisc    ==> fuser, killall, peekfd, pstree, prtstat, pwdx, scriptreplay, skill, slabtop, snice, sysctl, tload, top, uptime, vmstat, w, watch



