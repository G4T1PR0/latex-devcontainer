FROM mcr.microsoft.com/devcontainers/base:noble

RUN apt-get update && \
    apt-get install -y \
    texlive-full \
    texlive-lang-japanese \
    texlive-fonts-extra \
    texlive-latex-extra \
    latexmk \
    biber \
    make \
    && rm -rf /var/lib/apt/lists/*