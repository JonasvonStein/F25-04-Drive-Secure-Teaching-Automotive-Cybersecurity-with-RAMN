Install ubuntu 22.04 native

https://www.python.org/downloads/release/python-3810/

Install python 3.8 from link

Extract python file to desired location

Run in cmd terminal:

.. code-block:: console

  sudo apt update
  sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev \libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev 
  wget \libbz2-dev

  ## Cd to python 3.8.10 directory (mine is in downloads folder /~/Downloads/Python-3.8.10 )
  cd Python-3.8.10

.. code-block:: console

  ## Prepare build
  ./configure --enable-optimizations

.. code-block:: console

  ## compile source code
  make -j$(nproc)

.. code-block:: console

  ## install python without changing system python
  Sudo make altinstall

** you should already have the RAMN github cloned somewhere…**

## Download Carla 0.9.12 for Ubuntu
https://github.com/carla-simulator/carla/releases

Extract to desired location, I will extract to /Documents

** Carla will need python 3.7 installed so do the same as before but for python 3.7 version **

Running CARLA server

.. code-block:: console

  ./CarlaUE4.sh
  **For less GPU demand***
  ./CarlaUE4.sh -windowed - quality-level=Low -ResX=800 -ResY=600

Virtual environment for python scripts:

.. code-block:: console

  python3.7 -m venv carla-env
  source carla-env/bin/activate

Start carla server, open new terminal, run python manual_control.py


