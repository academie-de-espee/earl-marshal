---
title: Official Practices
layout: default
---

Have updates? [Submit a change](https://github.com/academie-de-espee/earl-marshal/blob/master/_data/practices.csv) or [Let us know](https://github.com/academie-de-espee/earl-marshal/issues/new)

<table width="100%">
<tr>
<th> Group </th> <th> Activities </th> <th> Marshal in Charge </th> <th> Days </th> <th> Time <th> Address <th> Last Updated </th>
{% for p in site.data.practices %}
<tr>
    <td> {{ p.group }} </td>
    <td> {{ p.activities }} </td>
    <td> <a href='mailto:{{p.email}}'>{{ p.mic }}</a> </td>
    <td> {{ p.days }} </td>
    <td> {{ p.start }} - {{ p.end }} </td>
    <td> {{ p.address }} </td>
    <td> {{ p.updated }} </td>
</tr>
{% endfor %}
