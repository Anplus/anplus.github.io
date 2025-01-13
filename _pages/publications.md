---
layout: page
permalink: /publications/
title: publications
description: 
years: [2025,2024,2023,2022,2021,2020,2019,2018,2017]
nav: true
nav_order: 1
---
An up-to-date list is also available on [Google Scholar](https://scholar.google.com/citations?user=RnYRx7cAAAAJ).
<!-- _pages/publications.md -->
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
