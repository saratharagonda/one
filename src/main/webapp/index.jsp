<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz@14..32&family=Poppins:wght@500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #fafcff;
      --surface: #ffffff;
      --primary: #0b1e33;
      --accent: #2b7eff;
      --accent-light: #e8f0fe;
      --muted: #5b6f87;
      --border: #e9edf2;
      --radius: 18px;
      --shadow: 0 12px 30px rgba(0, 20, 50, 0.06);
      --transition: 0.2s ease;
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---------- HEADER (new ui) ---------- */
    header {
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid var(--border);
      position: sticky;
      top: 0;
      z-index: 100;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 12px 0;
      gap: 16px;
      flex-wrap: wrap;
    }

    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand .accent { color: var(--accent); }

    /* navigation */
    .nav-links {
      display: flex;
      align-items: center;
      gap: 6px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: var(--transition);
      color: var(--primary);
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .nav-links a i { font-size: 1rem; opacity: 0.7; }
    .nav-links a:hover {
      background: var(--accent-light);
      color: var(--accent);
    }

    /* search */
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      transition: var(--transition);
      min-width: 220px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(43, 126, 255, 0.15);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 0.95rem;
      width: 100%;
      outline: none;
      color: var(--primary);
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      padding: 10px 16px;
      border-radius: 40px;
      font-size: 1rem;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .search-wrap button:hover { background: #1a5fd9; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.3rem;
      color: var(--primary);
      padding: 8px;
      border-radius: 40px;
      transition: var(--transition);
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      width: 44px;
      height: 44px;
    }
    .icon-btn:hover { background: var(--accent-light); color: var(--accent); }

    .cart-badge {
      position: relative;
      display: inline-flex;
    }
    .cart-badge .count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #ff4757;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 4px 8px rgba(255, 70, 80, 0.3);
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      padding: 4px 8px;
      cursor: pointer;
    }

    /* mobile menu */
    .mobile-nav {
      display: none;
      background: white;
      border-top: 1px solid var(--border);
      padding: 16px 0;
    }
    .mobile-nav a {
      display: block;
      padding: 12px 20px;
      font-weight: 500;
      border-radius: 12px;
      transition: var(--transition);
    }
    .mobile-nav a:hover { background: var(--accent-light); }

    /* ---------- HERO (fresh) ---------- */
    .hero {
      background: linear-gradient(145deg, #0b1e33 0%, #1b3a5c 100%);
      border-radius: var(--radius);
      margin: 24px auto 32px;
      padding: 60px 48px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 24px;
    }
    .hero-content { max-width: 600px; }
    .hero-content h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.8rem;
      font-weight: 700;
      line-height: 1.2;
      margin-bottom: 14px;
    }
    .hero-content p {
      opacity: 0.8;
      font-size: 1.1rem;
      max-width: 480px;
      margin-bottom: 28px;
    }
    .hero-actions { display: flex; gap: 14px; flex-wrap: wrap; }
    .btn {
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 10px;
      font-size: 1rem;
    }
    .btn-primary {
      background: white;
      color: var(--primary);
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    }
    .btn-primary:hover { transform: scale(1.02); background: #f0f6ff; }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.08);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.15);
      color: white;
    }
    .btn-ghost:hover { background: rgba(255, 255, 255, 0.18); }

    .hero-stat {
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(4px);
      padding: 20px 28px;
      border-radius: 20px;
      border: 1px solid rgba(255, 255, 255, 0.06);
      text-align: center;
      min-width: 140px;
    }
    .hero-stat .num { font-size: 2.2rem; font-weight: 700; letter-spacing: -0.02em; }
    .hero-stat .label { opacity: 0.7; font-size: 0.9rem; }

    /* ---------- SECTION ---------- */
    .section {
      padding: 36px 0 48px;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
      font-weight: 600;
    }
    .section-header .muted { color: var(--muted); font-size: 0.95rem; }

    /* categories grid */
    .grid-cats {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--surface);
      border-radius: var(--radius);
      padding: 20px 10px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 1px solid transparent;
      cursor: default;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 20px 40px rgba(43, 126, 255, 0.08);
    }
    .cat-card i {
      font-size: 2.2rem;
      color: var(--accent);
      background: var(--accent-light);
      padding: 14px;
      border-radius: 60px;
      margin-bottom: 12px;
    }
    .cat-card h4 { font-weight: 600; font-size: 1rem; margin-top: 4px; }
    .cat-card .sub { font-size: 0.8rem; color: var(--muted); }

    /* products grid */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 1px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 24px 48px rgba(0, 20, 50, 0.08);
    }
    .product-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      display: block;
      background: #f2f6fc;
    }
    .product-body {
      padding: 16px 16px 12px;
      flex: 1;
    }
    .product-body .title {
      font-weight: 600;
      font-size: 1.05rem;
    }
    .product-body .category {
      color: var(--muted);
      font-size: 0.8rem;
      text-transform: uppercase;
      letter-spacing: 0.03em;
      margin: 4px 0 8px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .price-current { font-weight: 700; font-size: 1.2rem; }
    .price-old { color: var(--muted); text-decoration: line-through; font-size: 0.9rem; }
    .rating {
      color: #f5b342;
      font-size: 0.9rem;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .rating span { color: var(--muted); font-size: 0.8rem; }

    .product-footer {
      padding: 12px 16px 16px;
      display: flex;
      gap: 10px;
      border-top: 1px solid var(--border);
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-btn:hover { background: var(--accent); }
    .wish-btn {
      background: var(--bg);
      border: 1px solid var(--border);
      border-radius: 40px;
      width: 44px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: var(--transition);
    }
    .wish-btn:hover { background: var(--accent-light); border-color: var(--accent); }

    /* deal section */
    .deal-card {
      display: flex;
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      gap: 0;
    }
    .deal-card img {
      width: 45%;
      object-fit: cover;
      background: #dce5f2;
      min-height: 280px;
    }
    .deal-content {
      padding: 32px 36px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 { font-family: 'Poppins', sans-serif; font-size: 1.8rem; }
    .timer {
      display: flex;
      gap: 12px;
      margin: 18px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 16px;
      border-radius: 12px;
      min-width: 64px;
      text-align: center;
    }
    .time-box .num { font-size: 1.6rem; font-weight: 700; }
    .deal-price {
      font-size: 1.8rem;
      font-weight: 700;
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .deal-price .old { font-size: 1rem; color: var(--muted); text-decoration: line-through; }
    .deal-badge {
      background: #ff4757;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.9rem;
    }

    /* testimonials */
    .testimonials {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 0 16px;
    }
    .testimonial {
      min-width: 280px;
      background: var(--surface);
      padding: 20px 24px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
    }
    .testimonial .stars { color: #f5b342; margin-bottom: 8px; }

    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 48px 36px;
      text-align: center;
    }
    .newsletter-box h3 { font-family: 'Poppins', sans-serif; font-size: 1.8rem; }
    .newsletter-box p { opacity: 0.7; margin: 6px 0 20px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 14px 20px;
      border-radius: 60px;
      border: none;
      width: 300px;
      max-width: 100%;
      font-size: 1rem;
    }
    .newsletter-form .btn { background: white; color: var(--primary); }

    /* footer */
    footer {
      padding: 32px 0 20px;
      border-top: 1px solid var(--border);
      margin-top: 24px;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 28px;
    }
    .footer-brand { font-weight: 700; font-size: 1.3rem; }
    .footer-links { display: flex; gap: 48px; flex-wrap: wrap; }
    .footer-links div { display: flex; flex-direction: column; gap: 6px; }
    .footer-links a { color: var(--muted); transition: var(--transition); }
    .footer-links a:hover { color: var(--accent); }

    /* responsive */
    @media (max-width: 1024px) {
      .grid-cats { grid-template-columns: repeat(3, 1fr); }
      .grid-products { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 820px) {
      .nav-links { display: none; }
      .mobile-toggle { display: inline-block; }
      .search-wrap { min-width: 160px; }
      .hero { padding: 40px 28px; }
      .hero-content h1 { font-size: 2.2rem; }
      .grid-products { grid-template-columns: repeat(2, 1fr); }
      .deal-card { flex-direction: column; }
      .deal-card img { width: 100%; height: 220px; }
    }
    @media (max-width: 550px) {
      .grid-cats { grid-template-columns: repeat(2, 1fr); }
      .grid-products { grid-template-columns: 1fr; }
      .hero-stat { min-width: 100px; }
      .header-inner { flex-wrap: wrap; }
      .search-wrap { order: 3; flex: 1 1 100%; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
    </div>

    <ul class="nav-links">
      <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
    </ul>

    <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search ..." />
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-badge">
          <button class="icon-btn" title="Cart"><i class="fas fa-shopping-cart"></i></button>
          <span class="count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>

  <!-- mobile nav -->
  <div class="mobile-nav" id="mobileMenu">
    <div class="container" style="display:flex;flex-direction:column;gap:6px;">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
      <a href="#products"><i class="fas fa-fire"></i> Trending</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <div class="container">
    <section class="hero">
      <div class="hero-content">
        <h1>Winter <br />Collection 2026</h1>
        <p>Premium picks in tech, fashion & lifestyle. Free shipping on orders over $50.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
        </div>
      </div>
      <div style="display:flex;gap:16px;flex-wrap:wrap;">
        <div class="hero-stat"><div class="num">20%</div><div class="label">off first order</div></div>
        <div class="hero-stat"><div class="num">⭐ 4.9</div><div class="label">customer rating</div></div>
      </div>
    </section>
  </div>

  <!-- CATEGORIES -->
  <section class="section container" id="categories">
    <div class="section-header">
      <div><h2>Shop by category</h2><span class="muted">Browse curated collections</span></div>
    </div>
    <div class="grid-cats" id="categoriesGrid"></div>
  </section>

  <!-- PRODUCTS -->
  <section class="section container" id="products">
    <div class="section-header">
      <div><h2>Trending now</h2><span class="muted">Popular picks based on recent activity</span></div>
    </div>
    <div class="grid-products" id="productsGrid"></div>
  </section>

  <!-- DEAL -->
  <section class="section container" id="deals">
    <div class="section-header">
      <div><h2>🔥 Flash sale</h2><span class="muted">Limited time, don't miss out</span></div>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" />
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted" style="margin:6px 0 12px;">Ultra‑thin, powerful, and all‑day battery.</p>
        <div class="timer">
          <div class="time-box"><div class="num" id="dealDays">0</div><div style="font-size:0.7rem;">days</div></div>
          <div class="time-box"><div class="num" id="dealHours">00</div><div style="font-size:0.7rem;">hrs</div></div>
          <div class="time-box"><div class="num" id="dealMinutes">00</div><div style="font-size:0.7rem;">min</div></div>
          <div class="time-box"><div class="num" id="dealSeconds">00</div><div style="font-size:0.7rem;">sec</div></div>
        </div>
        <div class="deal-price">$999 <span class="old">$1,199</span> <span class="deal-badge">-17%</span></div>
        <p style="margin:12px 0 0;">Only <strong>12</strong> items left at this price</p>
        <div style="margin-top:18px;"><button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Buy now</button></div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section container">
    <div class="section-header"><div><h2>What customers say</h2><span class="muted">Real reviews from verified buyers</span></div></div>
    <div class="testimonials" id="testimonials"></div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section container">
    <div class="newsletter-box">
      <h3>Stay in the loop</h3>
      <p>Subscribe for exclusive offers & new arrivals</p>
      <form class="newsletter-form" id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
        <button class="btn" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:12px;font-size:0.95rem;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div><div class="footer-brand">Nexus<span style="color:var(--accent);">Shop</span></div>
      <p style="color:var(--muted);max-width:300px;margin-top:6px;">Modern e‑commerce demo with a fresh, friendly interface.</p>
      <div style="display:flex;gap:12px;margin-top:12px;">
        <a href="#" style="color:var(--muted);"><i class="fab fa-facebook"></i></a>
        <a href="#" style="color:var(--muted);"><i class="fab fa-twitter"></i></a>
        <a href="#" style="color:var(--muted);"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><span style="font-weight:600;">Company</span><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
      <div><span style="font-weight:600;">Support</span><a href="#">Help Center</a><a href="#">Returns</a><a href="#">Contact</a></div>
    </div>
  </div>
  <div style="text-align:center;color:var(--muted);font-size:0.85rem;margin-top:28px;">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<script>
  (function(){
    // ---- DATA ----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
      { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'footwear' },
      { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
      { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
    ];

    // ---- STATE ----
    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const productsGrid = document.getElementById('productsGrid');
    const categoriesGrid = document.getElementById('categoriesGrid');

    // ---- RENDER ----
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const div = document.createElement('div');
        div.className = 'cat-card';
        div.innerHTML = `<i class="fas ${cat.icon}"></i><h4>${cat.name}</h4><div class="sub">Explore</div>`;
        div.addEventListener('click', ()=>{
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(div);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        const badgeHtml = p.badge ? `<span style="background:${p.badge.startsWith('-')?'#ff4757':'#2b7eff'};color:#fff;padding:2px 12px;border-radius:20px;font-size:0.7rem;font-weight:600;display:inline-block;margin-bottom:6px;">${p.badge}</span>` : '';
        card.innerHTML = `
          <img src="${p.img}" alt="${p.title}" loading="lazy" />
          <div class="product-body">
            <div class="title">${p.title}</div>
            <div class="category">${p.category}</div>
            <div class="price-row">
              <span class="price-current">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
              <div class="rating"><i class="fas fa-star"></i> ${p.rating} <span>(${p.reviews})</span></div>
            </div>
            ${badgeHtml}
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(card);
      });
      // attach add listeners
      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = Number(btn.dataset.id);
          addToCart(id);
        });
      });
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    function addToCart(id) {
      const p = PRODUCTS.find(x => x.id === id);
      if (!p) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added';
        btn.disabled = true;
        setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1000);
      }
    }

    // ---- SEARCH ----
    document.getElementById('searchBtn').addEventListener('click', ()=> filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

    // ---- MOBILE TOGGLE ----
    document.getElementById('mobileToggle').addEventListener('click', ()=>{
      const menu = document.getElementById('mobileMenu');
      menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
    });

    // ---- DEAL TIMER ----
    (function(){
      const target = new Date();
      target.setHours(target.getHours() + 24, target.getMinutes() + 36, 0);
      function tick(){
        const diff = target - new Date();
        if (diff <= 0) return;
        const days = Math.floor(diff / (86400*1000));
        const hours = Math.floor((diff % (86400*1000)) / (3600*1000));
        const mins = Math.floor((diff % (3600*100
