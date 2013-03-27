---
layout: default
title: José Camou
---
<article class="container">
    {% for post in site.posts limit: 1 %}
        <header class="post-header">
            <h1>{{post.title}}</h1>
              <p class="post-precontent">
                    <time pubdate>Mar 5th, 2013</time>
              </p>
        </header>

        <div class="main-content">

            {{post.content}}
           
        </div>
    {% endfor %}
    </article>