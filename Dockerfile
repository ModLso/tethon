FROM ModLso/tethon:slim-buster

#clonning repo 
RUN git clone https://github.com/ModLso/tethon.git /root/tethon
#working directory
WORKDIR /root/tethon

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/tethon/bin:$PATH"

CMD ["python3","-m","tethon"]
