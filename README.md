# How to avoid installing packages over your code

When developing the ingress and website side of FreshPorts, some FreshPorts packages can be installed
instead of operating entirely from source. To avoid having packages installed over top of the working
copy of your code, fake packages are installed which contain the same origin, but no installed code.

I've written about such files here:

   https://dan.langille.org/2021/02/16/preventing-a-given-package-from-being-installed/

To install a manfest file:

```
sudo pkg register -M ./+MANIFEST-p5-freshports-modules
sudo pkg lock -y p5-freshports-modules

sudo pkg register -M ./+MANIFEST-p5-freshports-scripts
sudo pkg lock -y p5-freshports-scripts
```
