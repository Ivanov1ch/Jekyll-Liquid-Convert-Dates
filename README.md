# Jekyll-Liquid-Convert-Dates
A collection of Jekyll plugins related to the conversion of Jekyll posts' dates to other formats. This repository be updated as I develop more plugins for my personal projects.

## Plugin Installation
To install any of my plugins, follow the following steps:

1) Clone this repository or download it as a ZIP archive and extract the `Jekyll-Liquid-Convert-Dates` folder
2) Find the `.rb` files for each of the plugins you wish to install
3) Copy the `.rb` files into the `_plugins` directory of your Jekyll project. If the `_plugins` directory does not exist, make it.


It's as simple as that! The plugins are now usable project-wide!


## Plugin-Specific Documentation

From here on out, the term `post date` refers to the `date` property of Jekyll posts (markdown files in the `_posts` directory). These `date`s are defined in the post's headers.

Take the following scenario as an example, which will demonstrate

Say you have a Jekyll project inside the `root` directory, with the following file structure:

```
root
├── _data/
├── _includes/
├── _sass/
├── _layouts/
├── _plugins/
├── _posts/
│   └── 2019-07-03-post.md
└── index.html
```

Notice that there is a post in the `_posts` directory. This post, saved in the file `2019-07-03-post.md`, has the following contents:

```
---
layout: post
title:  "Lorem ipsum dolor sit amet"
description: "Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui."
date:   2019-07-03 19:37:00
keywords: "welcome, Aenean, fermentum, Lorem, ipsum"
---
Lorem ipsum dolor sit amet
```

If one were to build a Jekyll site from such a root directory that displayed the `post date`, their index.html could include:
```
{% for post in site.posts %}
  {{ post.date }}
{% endfor %}
```

The corresponding built site would output `2019-07-03 19:37:00 +0000`. This `YYYY-MM-DD HH:MM:SS +/-TTTT` format is not the friendliest, and thus I created these plugins to assist developers in converting such data to various formats.

Using these definitions of `post date` and `post.date`, the following sections will document specific plugins and give examples of their usages.

### Month Year (`_month_year.rb`)

This plugin outputs dates in a `{Month Full Name} YYYY` format. To use it, install the plugin and then use the `month_year` filter in your liquid code.

Example usage:
`{{ post.date | month_year }}`, which will give `July 2019`.
