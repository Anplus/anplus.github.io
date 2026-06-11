---
title: Awards
permalink: /awards/
---

# Awards

{% for block in site.data.awards %}
<div class="year-block">
  <div class="year">{{ block.year }}</div>
  <ul>
    {% for item in block.items %}<li>{{ item }}</li>{% endfor %}
  </ul>
</div>
{% endfor %}
