For the +MANIFEST files https://dan.langille.org/2021/02/16/preventing-a-given-package-from-being-installed/

sudo pkg register -M ./+MANIFEST-p5-freshports-modules
sudo pkg lock -y p5-freshports-modules

sudo pkg register -M ./+MANIFEST-p5-freshports-scripts
sudo pkg lock -y p5-freshports-scripts

