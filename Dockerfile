FROM mcr.microsoft.com/devcontainers/base:noble

# RUN apt-get update && \
#     apt-get install -y \
#     texlive-full \
#     texlive-lang-japanese \
#     texlive-fonts-extra \
#     texlive-latex-extra \
#     latexmk \
#     biber \
#     make \
#     && rm -rf /var/lib/apt/lists/* && apt-get clean

WORKDIR /tmp
RUN wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
RUN pwd
RUN ls
RUN mkdir tl
RUN tar -xvf install-tl-unx.tar.gz -C ./tl/ --strip-components 1
RUN pwd
RUN ls -la
WORKDIR /tmp/tl
RUN pwd
RUN ls -la
RUN perl ./install-tl --no-interaction