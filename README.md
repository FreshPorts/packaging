# Why is this repo called packaging?

At one time, this repo held scripts for tagging releases and rolling tarballs using the
subversion repo. After converting to git, those scripts are no longer used. The scripts
have been deleted, but the name persists.

# How to avoid installing packages over your code

When developing the ingress and website sides of FreshPorts, some FreshPorts packages can be installed
instead of operating entirely from source. To avoid having packages installed over top of the working
copy of your code, manifests are used which contain the same origin as that package, but do not
install any files.

I've written about such files here:

   https://dan.langille.org/2021/02/16/preventing-a-given-package-from-being-installed/

The files for an ingress node are:

```
sudo pkg register -M ./+MANIFEST-p5-freshports-modules
sudo pkg lock -y p5-freshports-modules

sudo pkg register -M ./+MANIFEST-p5-freshports-scripts
sudo pkg lock -y p5-freshports-scripts
```

For a webserver node:

```
% sudo pkg register -M ./+MANIFEST-freshsource-www 
Installing freshsource-www-9999.0.2...
% sudo pkg register -M ./+MANIFEST-freshports-www 
Installing freshports-www-9999.0.2...
% sudo pkg lock -y freshports-www freshsource-www 
Locking freshports-www-9999.0.2
Locking freshsource-www-9999.0.2
```