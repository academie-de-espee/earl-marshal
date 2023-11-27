---
title: Official Practices
layout: default
---

Have updates? [Submit a change](https://github.com/academie-de-espee/rapier-marshal/blob/master/_data/practices.csv) or [Let us known](https://github.com/academie-de-espee/rapier-marshal/issues/new).

<table>
<tr>
    <th> Group </th>
    <th> Marshal in Charge </th>
    <th> Days </th>
    <th> Time
    <th> Address </th>
    <th> Last Updated </th>
</tr>
{% for p in site.data.practices %}
<tr>
    <td> {{ p.group }} </td>
    <td> <a href='mailto:{{p.email}}'>{{ p.mic }}</a> </td>
    <td> {{ p.days }} </td>
    <td> {{ p.start }} - {{ p.end }} </td>
    <td> {{ p.address }} </td>
    <td> {{ p.updated }} </td>
{% endfor %}
</table>
