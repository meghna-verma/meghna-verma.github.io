---
layout: home
title: "Hi â€” I'm Meghna"
permalink: /
author_profile: true
---

Welcome to my personal website.  
Iâ€™m a **Quantitative Systems Pharmacology (QSP) modeler** working on infectious disease modeling, pharmacometrics, and translational science.  

Here youâ€™ll find my **blog posts**, **CV**, and project highlights.  

### Latest Posts
{%- for post in site.posts limit:3 -%}
- [{{ post.title }}]({{ post.url }}) <small>({{ post.date | date: "%b %d, %Y" }})</small>
{%- endfor -%}
