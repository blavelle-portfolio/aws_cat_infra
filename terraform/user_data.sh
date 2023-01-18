sudo apt-get install gcc linux-headers-$(uname -r) hashcat-nvidia git bunzip2 -y

distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-$distribution.pin
sudo mv cuda-$distribution.pin /etc/apt/preferences.d/cuda-repository-pin-600

sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/7fa2af80.pub
echo "deb http://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/" | sudo tee /etc/apt/sources.list.d/cuda.list

sudo apt-get update -y
sudo apt install cuda-drivers -y 

# wget https://downloads.skullsecurity.org/passwords/rockyou.txt.bz2
# bunzip2 rockyou.txt.bz2
