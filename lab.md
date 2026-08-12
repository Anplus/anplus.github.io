---
title: Lab
permalink: /lab/
---

# Lab

I lead the **Pervasive Intelligence Lab** — our group homepage is at [github.com/Pervasive-Intelligence-Lab](https://github.com/Pervasive-Intelligence-Lab).

I am fortunate to work with the following students.

{% for group in site.data.lab %}
<div class="lab-group">
  <div class="lab-role">{{ group.role }}</div>
  <ul>
    {% for m in group.members %}<li>{% if m.url %}<a href="{{ m.url }}">{{ m.name }}</a>{% else %}{{ m.name }}{% endif %}{% if m.note %} <span class="lab-note">({{ m.note | markdownify }})</span>{% endif %}</li>{% endfor %}
  </ul>
</div>
{% endfor %}

## Opening

<div class="opening" markdown="1">
**I am looking for multiple fully-funded Ph.D. students (Fall & Spring 2026) at the [School of Computing](https://computing.uga.edu/). I also welcome motivated master's, undergraduate, and visiting students interested in research.**
</div>

My group works at the intersection of **AI, mobile computing, and wireless networks** — including physical AI and 3D vision-language models for AR/VR, neural ray tracing for radio and acoustics, and intelligent wireless systems. Ideal applicants have strong programming and system-prototyping skills, with a background in one or more of: wireless networks, signal processing, AI/ML, or embedded/IoT systems.

**How to apply:** Send your CV, transcripts, and a brief research statement to [an.zhenlin@outlook.com](mailto:an.zhenlin@outlook.com). I read every email but can only reply to shortlisted candidates. The University of Georgia (founded 1785, #46 National Universities, *U.S. News* 2025) is located in Athens, GA, a short drive from Atlanta's growing tech corridor.

<figure class="campus-photo">
  <img src="/assets/img/uga-campus.jpg" alt="Aerial view of the University of Georgia campus in Athens, GA">
  <figcaption>The University of Georgia campus in Athens, GA.</figcaption>
</figure>
