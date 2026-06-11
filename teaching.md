---
title: Teaching
permalink: /teaching/
---

# Teaching

{% for block in site.data.teaching.teaching %}
## {{ block.institution }}

<ul>
{% for item in block.items %}<li>{% if item.url %}{{ item.text }} (<a href="{{ item.url }}">course site</a>){% else %}{{ item.text }}{% endif %}</li>{% endfor %}
</ul>
{% endfor %}

# Invited Talks

<ul>
{% for t in site.data.teaching.talks %}<li><strong>{{ t.title }}</strong> — {{ t.host }}, {{ t.date }}</li>{% endfor %}
</ul>
