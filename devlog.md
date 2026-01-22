---
layout: page
title: Devlog
permalink: /devlog/
---

<div class="section">
  <div class="section-container">
    <p class="section-subtitle">
      A collection of my thoughts, project ideas, development notes, and reflections 
      on my coding journey. This is where I document what I'm learning and building.
    </p>
    
    <div class="posts-list">
      {% if site.posts.size > 0 %}
        {% for post in site.posts %}
          <article class="post-item">
            <h2 class="post-item-title">
              <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
            </h2>
            <div class="post-item-meta">
              <time datetime="{{ post.date | date_to_xmlschema }}">
                {{ post.date | date: "%B %-d, %Y" }}
              </time>
              {% if post.author %}
                <span> • by {{ post.author }}</span>
              {% endif %}
              {% if post.tags %}
                <span> • </span>
                {% for tag in post.tags %}
                  <span class="tag">{{ tag }}</span>
                {% endfor %}
              {% endif %}
            </div>
            {% if post.excerpt %}
              <p class="post-item-excerpt">{{ post.excerpt | strip_html }}</p>
            {% endif %}
            <a href="{{ post.url | relative_url }}" class="btn btn-primary" style="margin-top: 1rem;">Read More</a>
          </article>
        {% endfor %}
      {% else %}
        <div style="text-align: center; padding: 3rem; background-color: #1a1a1a; border-radius: 8px;">
          <h3 style="margin-bottom: 1rem;">No posts yet!</h3>
          <p style="color: #b0b0b0;">
            Check back soon for updates on my development journey.
          </p>
        </div>
      {% endif %}
    </div>
  </div>
</div>
