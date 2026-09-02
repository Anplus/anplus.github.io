---
title: Awards
permalink: /awards/
---

# Awards

## Grants

- [**NSF VINES Track 2: SCOPE-XR — Seeing the Channel: Optimizing Perception-aware Environments for XR**](https://www.nsf.gov/awardsearch/show-award?AWD_ID=2554332) — $5.1M total project funding; UGA leads the effort in collaboration with UT Austin, Virginia Tech, UW–Madison, and Ericsson Inc.
- **University of Georgia Startup Funding**

## Honors and Awards

{% for block in site.data.awards %}
<div class="year-block">
  <div class="year">{{ block.year }}</div>
  <ul>
    {% for item in block.items %}<li>{{ item }}</li>{% endfor %}
  </ul>
</div>
{% endfor %}
