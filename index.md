---
title: About
permalink: /
---

<div class="about-grid" markdown="1">

<div markdown="1">

# Zhenlin An

I am an assistant professor in the [School of Computing](https://computing.uga.edu/) at the [University of Georgia](https://www.uga.edu/). I was a postdoctoral researcher at the University of Pittsburgh and Princeton University, advised by [Dr. Longfei Shangguan](https://shanggdlk.github.io/) and [Prof. Kyle Jamieson](https://www.cs.princeton.edu/~kylej/). Prior to that, I was a postdoc and received my Ph.D. at The Hong Kong Polytechnic University, advised by [Dr. Lei Yang](https://web.comp.polyu.edu.hk/csyanglei/#/pages/profile/about) and [Prof. Jiannong Cao](https://www4.comp.polyu.edu.hk/~csjcao/).

My research centers on mobile computing, wireless systems, and their intersection with AI. I explore physics-informed AI for intelligent communication, localization, and sensing. My work is driven by three core questions: (1) how can off-the-shelf sensors and radios be repurposed for extended capabilities? (2) how can we address the system challenges of emerging AI-native wireless systems? (3) how can sensing systems be designed to better support everyday life?

<div class="opening" markdown="1">
**I am looking for multiple self-motivated PhD students and research assistants (Spring/Fall 2026). Feel free to reach out: [an.zhenlin@outlook.com](mailto:an.zhenlin@outlook.com)**
</div>

</div>

<div class="about-photo">
  <img src="/assets/img/bio.jpeg" alt="Zhenlin An">
  <div class="links">
    <a href="{{ site.cv_path }}">CV</a> ·
    <a href="{{ site.scholar_url }}">Scholar</a> ·
    <a href="{{ site.github_url }}">GitHub</a><br>
    <a href="{{ site.linkedin_url }}">LinkedIn</a> ·
    <a href="{{ site.twitter_url }}">Twitter</a> ·
    <a href="{{ site.orcid_url }}">ORCID</a>
  </div>
</div>

</div>

## Research Highlights

My recent research is organized around the following directions (see the [Research](/research/) page for the vision behind them, and [Publications](/publications/) for the full list):

{% for sec in site.data.highlights %}
<div class="highlight-section">
  <div class="hl-title">{{ sec.section }}</div>
  {% if sec.lead %}<div style="color: var(--ink-light); font-size: 0.95rem;">{{ sec.lead }}</div>{% endif %}
  {% for g in sec.groups %}
  <div class="highlight-line">
    <span class="hl-label">{{ g.label }}:</span>
    {% for w in g.works %}{% if w.url %}<a class="chip" href="{{ w.url }}">{{ w.name }} [{{ w.venue }}]</a>{% else %}<span class="chip">{{ w.name }} [{{ w.venue }}]</span>{% endif %}{% endfor %}
  </div>
  {% endfor %}
</div>
{% endfor %}

## News

<table class="news-table">
{% for n in site.data.news %}
  <tr>
    <td class="date">{{ n.date }}</td>
    <td>{{ n.text | markdownify | remove: '<p>' | remove: '</p>' }}</td>
  </tr>
{% endfor %}
</table>
