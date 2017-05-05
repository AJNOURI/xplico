FROM phusion/baseimage:0.9.16

CMD ["/sbin/my_init"]


RUN bash -c 'echo "deb http://repo.xplico.org/ $(lsb_release -s -c) main" >> /etc/apt/sources.list'
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 791C25CE
RUN apt-get update && apt-get -y install xplico vim nano

#ENV HOME /home/user
#RUN useradd --create-home --home-dir $HOME user \
#    && chown -R user:user $HOME 

#ADD init_script.sh /init_script.sh
#RUN chmod a+x /init_script.sh

#CMD init_script.sh


RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
