---
layout: page
permalink: /publications/
title: publications
description: An up-to-date list is also available on <a href="https://scholar.google.com/citations?user=RnYRx7cAAAAJ" style="color: blue;>Google Scholar</a>.
years: [2025,2024,2023,2022,2021,2020,2019,2018,2017]
nav: true
nav_order: 1
---
<!-- _pages/publications.md -->
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
