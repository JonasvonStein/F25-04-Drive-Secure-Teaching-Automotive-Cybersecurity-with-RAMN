.. _Using_CARLA:

Using CARLA Simulator
==============

1. Install CARLA from the link found in section 1.3 of the documentation: https://carla.readthedocs.io/en/latest/start_quickstart/#carla-installation , and then you will have to follow the instructions on the CARLA website to install, depending on your Operating System. We will show you an application of utilizing Ubuntu and CARLA in the ECU Manipulation challenge, but it is not a necessity for the challenge.
2. You will have to install packages for CARLA as well as some requirements.txt, but this will be found in the installation instructions.
3. To launch CARLA, you will need to navigate to the home directory, and you can launch by running ./CARLAUe4.sh (or equivalent for Windows).
4. -ResX=800 -ResY=600 -quality-level=Low
    a. These are some options for if your computer doesn’t have a great graphics card or processor, we used a Lenovo ThinkPad laptop with an Intel i7 processor and nVidia Quadro T2000 GPU on low graphics.
5. In another terminal window, you can navigate to CARLA’s Python API and run several of the example codes there.
6. To use CARLA with RAMN, you will need to navigate to your RAMN repository, RAMN/scripts/carl, and you can utilize any of these Python scripts to use the RAMN system with CARLA.
