FROM centos7-tabcmd

#ENV  TABCMD echo 'Must accept the tableau software EULA using -e TABCMD="tabcmd --accepteula"'

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/opt/tableau/tabcmd/bin/tabcmd"]


#ENV TABCMD echo 'Must accept the tableau software EULA using -e TABCMD="tabcmd --accepteula"'


#RUN if [ "$TABCMD" == tabcmd --accepteula ]; then tabcmd --accepteula ; else echo 'Must accept the tableau software EULA using -e TABCMD="tabcmd --accepteula"'; fi
#ENTRYPOINT ["sh", "-c", "$TABCMD"]


#VOLUME [ "/sys/fs/cgroup" ]

#CMD /usr/sbin/init
#.eula_accepted_20192.19.0518.0639

#/opt/tableau/tabcmd/bin/tabcmd