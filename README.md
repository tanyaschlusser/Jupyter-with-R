# Using Jupyter notebooks with R in the classroom

<img alt="Jupyter Logo" src="https://github.com/tanyaschlusser/Jupyter-with-R/blob/master/img/Jupyter-logo-200x200.png" />
<img alt="R Logo" src="https://github.com/tanyaschlusser/Jupyter-with-R/blob/master/img/R-logo-229x200.png" />  

This is the accompanying material for a talk given
at the [R user conference 2016][useR2016].


## To run your own [tmpnb] server:

You you will need enough memory to support the number of Docker
containers you will run. You can limit the memory for the Jupyter notebook
process in a command line argument (shown in the invocation below as 256 MB). 
But first, to set up on Debian:

```shell
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo debian-jessie main" > docker.list
sudo mv docker.list /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y docker-engine
sudo service docker start
```

Then, pull the Docker image with the notebook you want to run:

```shell
sudo docker pull tanya/r-notebook-example
```

And run the server, which will listen on all IP addresses at port 8000:

```shell
export TOKEN=$( head -c 30 /dev/urandom | xxd -p )
sudo docker run --net=host -d -e CONFIGPROXY_AUTH_TOKEN=$TOKEN  \
 --name=proxy jupyter/configurable-http-proxy  \
 --default-target http://127.0.0.1:9999
sudo docker run --net=host -d -e CONFIGPROXY_AUTH_TOKEN=$TOKEN   \
  -v /var/run/docker.sock:/docker.sock  jupyter/tmpnb python orchestrate.py  \
  --image='tanya/r-notebook-example'  \
  --redirect-uri='notebooks/example-Jupyter-R.ipynb'  \
  --mem-limit=256m \
  --cull-timeout=300 \
  --pool-size=8  \
  --command="jupyter notebook notebooks/example-Jupyter-R.ipynb --NotebookApp.base_url={base_path} --ip=0.0.0.0 --port {port}"
```

The options to change in the above command are 
* `--image` (to your own Docker image)
* `--redirect-uri` (which you can exclude and it will open to the top level tree of all available notebooks)
* `--command` (just `jupyter notebook` if you want to open to the top level tree of all available notebooks) 

<!--
### Multiple tmpnb hosts
Note to self: fill in the Google Compute Engine instructions to
make an image template and reuse it.
-->

### Reverse proxy in front of the server
If you want an NGINX reverse proxy in front of it, you can start
with the sample _nginx.conf_ file, and modify and copy it to
_/etc/nginx/nginx.conf_ after installing. You should also
add TLS wrapping (SSL) but I didn't.

```
sudo apt-get install nginx
# Confirm it works
sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
sudo cp <your-own-nginx.conf> /etc/nginx/nginx.conf
sudo nginx -s reload
```


## To build a Docker image from your Dockerfile:

```shell
docker build  --tag <dockerhub-id>/<image-name>  .
# e.g.
docker build --tag tanya/r-notebook .
```

And push it to the main [Docker Hub](https://hub.docker.com/)

```shell
docker login
docker push <dockerhub-id>/<image-name>
# e.g.
docker push tanya/r-notebook
```


## To build the dataset from [Jacobs et al. (preprint)][jacobs]:

The dataset is transcribed from the preprint of 
C. T. Jacobs, G. J. Gorman, H. E. Rees, L. E. Craig (In Press).
Experiences with efficient methodologies for teaching computer programming to geoscientists.
_Journal of Geoscience Education_. Pre-print: http://arxiv.org/abs/1505.05425,
and is used with permission; please contact
the authors if you're interested in their work or teaching.

```shell
cd <to-this-repository>
R CMD BUILD jacobs2016data
R CMD INSTALL jacobs2016data_0.1.tar.gz 
```


## To build your own slides from a Jupyter notebook:

- Caveat: formatting can be different across machines so it's still best to present
  from your own laptop.
- Ensure the 'Slide' option in the Cell Toolbar is available by selecting
  View → 'Cell toolbar' → 'Slideshow' in the box on the top right of the notebook.
- Identify cells you wish to have rendered as slides by selecting 'Slide type:' as
  'Slide' at the top right of each cell.
  - 'Sub-Slide' is the same as 'Slide' but the animation of slide motion is
    to wipe up (instead of left) off the page.
  - 'Fragment' will append the content of the new cell to the bottom of the existing
    cell on the page.
- Execute this command in a terminal shell:

```shell
export PREFIX=https://cdn.jsdelivr.net/reveal.js/3.0.0; \
   jupyter nbconvert --to slides <your-notebook-name-here>.ipynb \
   --reveal-prefix ${PREFIX}
```


## Links

### The paper that inspired this
- [Jacobs _et al._](http://arxiv.org/pdf/1505.05425)
- [Related blog post at Software-Carpentry](http://software-carpentry.org/blog/2016/06/teaching-python-to-undergraduate-geoscientists.html)
- [Related slide deck](http://christianjacobs.uk/hen-2016-sticky-notes)
- [Their course on GitHub](https://github.com/ggorman/Introduction-to-programming-for-geoscientists)

### Documentation
- [The Jupyter Project](http://jupyter.org/)
- [IR Kernel](https://irkernel.github.io/)

### Resources
- [Anaconda R repository](https://anaconda.org/r)
- [Jupyter's base Dockerfile for R](https://github.com/jupyter/docker-stacks/tree/master/r-notebook)
- [Related slides for this repository](https://tanyaschlusser.github.io/Jupyter-with-R/)
- *JupyterHub*, an alternative to *tmpnb* that has user authenticated logins using the
  users on a single computer -- good for classes that can have a dedicated computer
  at school [JupyterHub](https://github.com/jupyterhub/jupyterhub)

## Thank you
My participation would not have been possible without
the support of the R diversity initiative, and the kind
accommodation by conference organizers and participants.
Thank you guys!


[useR2016]: http://user2016.org/
[tmpnb]: https://github.com/jupyter/tmpnb
[jacobs]: http://arxiv.org/abs/1505.05425
[Notice]: https://github.com/tanyaschlusser/Jupyter-with-R/blob/master/NOTICE.md
