FROM node:18-bullseye

RUN apt-get update && apt-get install -y vifm zsh libfuse2

# python 3
RUN apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
RUN apt install -y python3 pip
RUN pip install pynvim --upgrade

# neovim
RUN wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.deb
RUN apt install -y ./nvim-linux64.deb
RUN rm ./nvim-linux64.deb

# config neovim
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
COPY init.vim /root/.config/nvim/init.vim
RUN update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 100

RUN ["npm", "install"]

