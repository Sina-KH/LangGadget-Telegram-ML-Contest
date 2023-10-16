**This documentation will guide you to install all the requirements, step by step.**

### Operating System

**LangGadget** is usable on Linux, MacOS and Windows; But, In this documentation, my focus is on `Debian GNU/Linux 10 (buster)`
and the documentation is fully customized for this os.

First of all, make sure to upgrade your packages and install build essentials:

```
sudo apt update
sudo apt upgrade
sudo apt install wget build-essential libreadline-gplv2-dev libncursesw5-dev \
     libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
```

Install cmake and python3-pkgconfig:

`sudo apt install cmake python3-pkgconfig`

Install curl: (required to install /nix if you follow this tutorial.)

```
sudo apt install curl
```

Upgrade gcc to latest version, otherwise some packages like NumPy may fail to install. I did it using `nix`!

```
sudo mkdir /nix
sudo chown -R $(whoami) /nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon
source ~/.nix-profile/etc/profile.d/nix.sh
nix-shell -p gcc
```

Install libblas to prevent BLAS related issues on installing required python packages:
```
sudo apt install libopenblas-base libopenblas-dev libblas-dev
```

---

### Build tools for `Dataset Generation` / `Training`:

- **Python**:
  This project is tested using python 3.9, so, to upgrade your python and install python 3.9 on your system, do this:
```
cd ~/Desktop/
mkdir setup_python
cd setup_python
wget https://www.python.org/ftp/python/3.9.16/Python-3.9.16.tgz
tar xzf Python-3.9.16.tgz
cd Python-3.9.16
./configure --enable-optimizations
sudo make altinstall
```

To prevent errors related to temp directory storage, change `TMPDIR` to another path like this:

```
mkdir $HOME/tmp
export TMPDIR=$HOME/tmp
```

Upgrade pip and setuptools:

`python3.9 -m pip install --upgrade pip setuptools wheel`

Install tensorflow:

`python3.9 -m pip install tensorflow==2.5.0`

Install requirement packages:

`python3.9 -m pip install -r requirements.txt`

---

### Build tools for `LangGadgetLib` to use result model file and detect language:

Install bazel!

Build tensorflow using bazel!

More info can be found [here.](https://www.tensorflow.org/install/source)

Don't forget to use this command and then copy the output .so files where you want and link it in your LangGadgetLib project.

`bazel build --config=opt //tensorflow:libtensorflow_cc.so`