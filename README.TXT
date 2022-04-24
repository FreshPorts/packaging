For the +MANIFEST files https://dan.langille.org/2021/02/16/preventing-a-given-package-from-being-installed/

sudo pkg register -M ./+MANIFEST-p5-freshports-modules-git
sudo pkg lock p5-freshports-modules-git

sudo pkg register -M ./+MANIFEST-FreshPorts-Scripts
sudo pkg lock FreshPorts-Scripts
