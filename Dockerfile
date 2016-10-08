FROM qnib/alpn-gocd-agent

HEALTHCHECK --interval=5s --retries=30 --timeout=2s \
CMD /opt/qnib/gocd/agent/bin/check.sh
RUN echo "tail -f /var/log/supervisor/gocd-agent.log" >> /root/.bash_history
