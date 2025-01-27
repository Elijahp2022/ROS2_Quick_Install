# Quick ROS2 Install
## Instructions

1. Clone this repository by running the command `git clone https://github.com/Elijahp2022/ROS2_Quick_Install.git`
2. Give the menu write permissions and run it with the following commands 
```
sudo chmod +x menu.bash
./menu.bash
```
3. Type in the name of the ROS2 distro to install
A list of all distros can be found [here](https://docs.ros.org/en/rolling/Releases.html)
4. Choose the version of ROS2 to install. If you want graphical tools then choose desktop version, otherwise choose base version.


## Common Errors (*WIP*)
* Error: "Package not found"
    * Reason: This is most likely caused by using the wrong distro of ROS2/wrong version of Ubuntu. For example trying to install ROS2 Jazzy Jalisco on Ubuntu 22.04.
    * Solution: Either choose the appropriate distrobution of ROS2 to match the Ubuntu version, or choose the appropriate Ubuntu Version to match the ROS2 distrobution
