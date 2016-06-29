# Using Jupyter notebooks with R in the classroom

![Jupyter Logo](https://avatars1.githubusercontent.com/u/7388996?v=3&s=400)
![R Logo](https://www.r-project.org/logo/Rlogo.png)


# To build your own slides from the notebook:

- Select 'slides' in the box on the top right of the notebook.
- Identify the slides as 'Slide' at the top right of each cell.
- Execute this command:

```
export PREFIX=https://cdn.jsdelivr.net/reveal.js/2.6.2; \
   jupyter nbconvert <your-notebook-name-here>.ipynb \
   --to slides \
   --reveal-prefix ${PREFIX}
```
