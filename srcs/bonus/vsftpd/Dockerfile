FROM alpine:3.16.0

RUN apk add --no-cache vsftpd
COPY utils/install_vsftpd.sh .
COPY conf/vsftpd.conf /etc/vsftpd/vsftpd.conf
RUN chmod +x install_vsftpd.sh
ENTRYPOINT ["./install_vsftpd.sh"]
CMD ["vsftpd", "/etc/vsftpd/vsftpd.conf"]