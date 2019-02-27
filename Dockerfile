
from ubuntu

RUN apt-get update

RUN apt-get install -y \
    make \
    pandoc \
#    texlive-fonts-recommended \
#    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra

CMD ["/bin/bash"]
