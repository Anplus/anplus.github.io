---
title: Publications
permalink: /publications/
---

# Publications

<div class="pub-note">
The full list is also available on <a href="{{ site.scholar_url }}">Google Scholar</a>.
An asterisk (*) denotes co-first authors with equal contribution.
</div>

{% assign pubs = site.data.publications | sort: "year" | reverse %}
{% assign years = pubs | map: "year" | uniq %}
{% for y in years %}
<div class="pub-year">{{ y }}</div>
{% for p in pubs %}{% if p.year == y %}
<div class="pub-item">
  <div class="pub-venue">{{ p.venue }}</div>
  <div>
    <div class="pub-title">{{ p.title }}</div>
    <div class="pub-authors">{{ p.authors | replace: "Zhenlin An", '<span class="me">Zhenlin An</span>' }}</div>
    <div class="pub-where">{{ p.where }}, {{ p.year }}</div>
    {% if p.link %}<div class="pub-links"><a href="{{ p.link }}">Project Page</a></div>{% endif %}
    {% if p.award %}<div class="pub-award">&#127942; {{ p.award }}</div>{% endif %}
  </div>
</div>
{% endif %}{% endfor %}
{% endfor %}
