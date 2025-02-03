FROM gcc:latest

WORKDIR /app
COPY .bashrc /root/.bashrc
RUN apt-get update && apt-get install -y make
RUN apt-get install bash-completion
# 起動時に .bashrc を読み込む
CMD ["bash", "-c", "source ~/.bashrc && exec bash"]