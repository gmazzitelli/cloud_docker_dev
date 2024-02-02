ARG TAG
FROM gmazzitelli/${TAG}
RUN pip3 install --no-cache-dir -U git+https://github.com/CYGNUS-RD/cygno.git
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt
