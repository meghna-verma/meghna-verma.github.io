---
layout: home
title: "Hi â€” I'm Meghna"
permalink: /
author_profile: true
---

Welcome to my personal website.Â Â 
Iâ€™m a **Quantitative Systems Pharmacology (QSP) modeler** working on infectious disease modeling, pharmacometrics, and translational science.Â Â 

Here youâ€™ll find my **blog posts**, **CV**, and project highlights.Â Â 

### Latest Posts
{%- for post in site.posts limit:3 -%}
- [{{ post.title }}]({{ post.url }}) <small>({{ post.date | date: "%b %d, %Y" }})</small>
{%- endfor -%}
