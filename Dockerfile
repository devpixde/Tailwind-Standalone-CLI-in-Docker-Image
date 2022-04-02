FROM alpine

LABEL description="Demo for creating a tailwind cli container (without node)"  
LABEL maintainer="info@devpix.de"  

WORKDIR /app  
COPY . .  
VOLUME ["/app"]  

RUN apk update
RUN apk upgrade
RUN apk add bash

RUN apk add gcompat build-base
RUN wget https://github.com/tailwindlabs/tailwindcss/releases/latest/download/tailwindcss-linux-x64
RUN chmod +x tailwindcss-linux-x64
RUN mv tailwindcss-linux-x64 /bin/tailwindcss
RUN alias tailwindcss=/bin/tailwindcss

CMD ["tailwindcss",  "-i", "./src/main.css", "-o", "./dist/main.css", "--watch"]