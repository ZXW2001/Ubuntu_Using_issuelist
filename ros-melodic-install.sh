 echo "This is  a script to install ros-melodic"
 echo "Add the sourse of ros"
 echo "-------------------------------------------------"
 sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.tuna.tsinghua.edu.cn/ros/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'

 echo "Add the key of ros"
 echo "-------------------------------------------------"
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

  echo "Update the package lists"
 echo "-------------------------------------------------"
sudo apt update  
  echo "Start the install"
 echo "-------------------------------------------------"
sudo apt install ros-melodic-desktop-full

  echo "Set the environment variables"
 echo "-------------------------------------------------"
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

  echo "install this tool and other dependencies"
 echo "-------------------------------------------------"
sudo apt install ros-melodic-desktop-full
sudo apt install python-rosdep

if ! dpkg -s proxychains >/dev/null 2>&1; then
  sudo apt-get install  proxychains
    echo "please  config the proxychains and init the rosdep manully"

fi

proxychains sudo rosdep init
proxychains rosdep update





