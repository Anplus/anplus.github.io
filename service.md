---
title: Service
permalink: /service/
---

# Service

## Conference Service

{% for block in site.data.service.conference %}
<div class="year-block">
  <div class="year">{{ block.year }}</div>
  <ul>
    {% for item in block.items %}<li>{{ item }}</li>{% endfor %}
  </ul>
</div>
{% endfor %}

## Journal Reviewer

<ul>
{% for j in site.data.service.journal_reviewer %}<li>{{ j }}</li>{% endfor %}
</ul>
