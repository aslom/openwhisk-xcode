
ARG BASE_IMG=swift3action:base
#ARG BASE_IMG
#FROM swift3action:base
FROM $BASE_IMG
ENV BASE_IMG1 $BASE_IMG

# need ot redeclare after FORM - bug in docker build? RUN below prints BASE_IMG1=
RUN echo BASE_IMG1=$BASE_IMG1
ARG BASE_IMG
RUN echo BASE_IMG=$BASE_IMG

ENV BASE_IMG2 $BASE_IMG
RUN echo BASE_IMG2=$BASE_IMG2

ARG CONT_IMG_VER
ENV CONT_IMG_VER ${CONT_IMG_VER:-v1.0.0}
RUN echo $CONT_IMG_VER

ENV DEBIAN_FRONTEND noninteractive

ENV PYTHONIOENCODING utf-8

RUN sudo apt-get -y install libpython2.7

COPY add_dylib.py /

RUN /add_dylib.py

WORKDIR /swift3Action/spm-build/
#RUN /bin/bash -c "/usr/bin/swift build"

CMD ["/bin/bash", "-c", "cd /swift3Action && PYTHONIOENCODING='utf-8' python -u swift3runner.py"]
