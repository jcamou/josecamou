---
layout: default
title: José Camou
---
<article class="container">
    {% for post in site.posts limit: 1 %}
        <header class="post-header">
            <h1>{{post.title}}</h1>
            {% if post.date %}
              <p class="post-precontent">
                    <time pubdate>{{post.date | date: "%b %d, %Y"}}</time>
              </p>
            {% endif %}
        </header>

        <div class="main-content">

            {{post.content}}
           
        </div>
    {% endfor %}
    </article>