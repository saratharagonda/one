<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>KartVibe · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: #f1f4f8;
      color: #1a2634;
      line-height: 1.5;
    }

    /* ----- fresh theme (inspired by Flipkart: blue + white + citrus accent) ----- */
    :root {
      --bg-page: #f1f4f8;
      --surface: #ffffff;
      --surface-glass: rgba(255, 255, 255, 0.75);
      --primary: #1a2634;
      --primary-soft: #2c3e50;
      --accent: #2874f0;          /* Flipkart blue */
      --accent-hover: #1a5fd9;
      --accent-glow: #7aa5f9;
      --text-muted: #5a6b7c;
      --border-light: #e2e8f0;
      --shadow-card: 0 8px 24px -8px rgba(0, 0, 0, 0.06);
      --radius-xl: 24px;
      --radius-md: 16px;
      --radius-sm: 12px;
      --transition: 0.25s cubic-bezier(0.2, 0, 0, 1);
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- header (clean, light, with blue accent) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.88);
      backdrop-filter: blur(10px) saturate(180%);
      -webkit-backdrop-filter: blur(10px) saturate(180%);
      border-bottom: 1px solid rgba(40, 116, 240, 0.12);
      box-shadow: 0 2px 12px rgba(0,0,0,0.02);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 12px 0;
      flex-wrap: wrap;
    }

    .brand {
      font-weight: 700;
      font-size: 1.7rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 10px;
      color: var(--primary);
    }
    .brand i {
      color: var(--accent);
      font-size: 1.9rem;
    }
    .brand span.accent {
      background: linear-gradient(135deg, var(--accent), #1a5fd9);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
    }
    nav.main-nav li a {
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--primary);
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 8px;
    }
    nav.main-nav li a i {
      font-size: 1rem;
      color: var(--text-muted);
    }
    nav.main-nav li a:hover {
      background: var(--accent);
      color: white;
      box-shadow: 0 8px 18px -6px rgba(40, 116, 240, 0.3);
    }
    nav.main-nav li a:hover i {
      color: white;
    }

    .search-wrapper {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 4px 4px 4px 20px;
      box-shadow: 0 2px 12px rgba(0,0,0,0.02);
      border: 1px solid var(--border-light);
      transition: var(--transition);
      min-width: 220px;
    }
    .search-wrapper:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(40, 116, 240, 0.12);
    }
    .search-wrapper input {
      border: none;
      background: transparent;
      padding: 10px 0;
      width: 100%;
      font-size: 0.95rem;
      outline: none;
      color: var(--primary);
    }
    .search-wrapper button {
      background: var(--accent);
      border: none;
      color: white;
      padding: 10px 18px;
      border-radius: 60px;
      cursor: pointer;
      font-size: 1rem;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .search-wrapper button:hover {
      background: var(--accent-hover);
      transform: scale(0.97);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 16px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.3rem;
      color: var(--primary);
      padding: 6px;
      border-radius: 50%;
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      transition: var(--transition);
      cursor: pointer;
      position: relative;
    }
    .icon-btn:hover {
      background: rgba(40, 116, 240, 0.08);
      color: var(--accent);
    }
    .cart {
      background: var(--primary);
      color: white;
      border-radius: 40px;
      padding: 8px 16px 8px 14px;
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 600;
      transition: var(--transition);
      border: none;
    }
    .cart i {
      font-size: 1.2rem;
    }
    .cart:hover {
      background: var(--accent);
      transform: translateY(-2px);
      box-shadow: 0 12px 20px -8px rgba(40, 116, 240, 0.3);
    }
    .cart-count {
      background: white;
      color: var(--primary);
      border-radius: 40px;
      padding: 0 10px;
      font-size: 0.8rem;
      font-weight: 700;
      line-height: 22px;
    }

    .mobile-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 1.6rem;
      color: var(--primary);
      cursor: pointer;
      padding: 4px 8px;
    }

    /* ----- hero (blue gradient with citrus pop) ----- */
    .hero {
      background: linear-gradient(145deg, #1a2a3a 0%, #2c3e50 100%);
      color: white;
      border-radius: var(--radius-xl);
      margin: 24px auto;
      padding: 60px 40px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 30px;
      position: relative;
      overflow: hidden;
      border: 1px solid rgba(255,255,255,0.04);
    }
    .hero::after {
      content: '';
      position: absolute;
      right: -8%;
      top: -20%;
      width: 500px;
      height: 500px;
      background: radial-gradient(circle, rgba(40,116,240,0.18) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero-content {
      max-width: 600px;
      position: relative;
      z-index: 2;
    }
    .hero-content h1 {
      font-size: 3.2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      line-height: 1.2;
      margin-bottom: 16px;
    }
    .hero-content h1 i {
      color: #fbbf24; /* citrus yellow */
    }
    .hero-content p {
      opacity: 0.8;
      font-size: 1.1rem;
      margin-bottom: 28px;
      max-width: 480px;
    }
    .hero-badge {
      display: inline-block;
      background: rgba(255,255,255,0.08);
      backdrop-filter: blur(4px);
      padding: 6px 18px;
      border-radius: 60px;
      font-size: 0.8rem;
      font-weight: 500;
      margin-bottom: 18px;
      border: 1px solid rgba(255,255,255,0.06);
    }
    .btn-group {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }
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
      background: var(--accent);
      color: white;
      box-shadow: 0 8px 24px -6px rgba(40, 116, 240, 0.4);
    }
    .btn-primary:hover {
      background: var(--accent-hover);
      transform: translateY(-3px);
      box-shadow: 0 16px 32px -8px rgba(40, 116, 240, 0.5);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.06);
      border: 1px solid rgba(255,255,255,0.15);
      color: white;
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.12);
      border-color: rgba(255,255,255,0.3);
    }

    /* ----- sections ----- */
    .section {
      padding: 48px 0 32px;
    }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-size: 1.9rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: var(--primary);
    }
    .section-header .muted {
      color: var(--text-muted);
      font-weight: 400;
      font-size: 1rem;
    }

    /* categories grid */
    .grid-categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--surface);
      padding: 24px 12px;
      border-radius: var(--radius-md);
      text-align: center;
      box-shadow: var(--shadow-card);
      border: 1px solid var(--border-light);
      transition: var(--transition);
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-8px);
      border-color: var(--accent);
      box-shadow: 0 20px 40px -12px rgba(40, 116, 240, 0.2);
    }
    .cat-card .icon {
      font-size: 2.2rem;
      color: var(--accent);
      margin-bottom: 10px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 1rem;
    }
    .cat-card .sub {
      font-size: 0.75rem;
      color: var(--text-muted);
      margin-top: 6px;
    }

    /* products grid */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius-md);
      overflow: hidden;
      box-shadow: var(--shadow-card);
      border: 1px solid var(--border-light);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 24px 44px -16px rgba(0,0,0,0.08);
    }
    .product-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      background: #f0f2f5;
    }
    .product-body {
      padding: 18px 16px 12px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1.05rem;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 0.75rem;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.03em;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 10px;
      flex-wrap: wrap;
    }
    .price {
      font-weight: 700;
      font-size: 1.2rem;
      color: var(--primary);
    }
    .old-price {
      color: var(--text-muted);
      text-decoration: line-through;
      font-size: 0.9rem;
    }
    .rating {
      color: #fbbf24;
      font-size: 0.9rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .rating span {
      color: var(--text-muted);
      font-size: 0.75rem;
    }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 12px 0;
      border-radius: 60px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-btn:hover {
      background: var(--accent);
      box-shadow: 0 8px 20px -8px rgba(40, 116, 240, 0.3);
    }
    .wish-btn {
      background: transparent;
      border: 1px solid var(--border-light);
      border-radius: 60px;
      width: 48px;
      display: grid;
      place-items: center;
      cursor: pointer;
      transition: var(--transition);
      color: var(--text-muted);
    }
    .wish-btn:hover {
      background: #fee2e2;
      color: #dc2626;
      border-color: #fecaca;
    }

    /* deal card */
    .deal-card {
      background: var(--surface);
      border-radius: var(--radius-xl);
      display: flex;
      overflow: hidden;
      box-shadow: var(--shadow-card);
      border: 1px solid var(--border-light);
      margin-top: 12px;
    }
    .deal-card img {
      width: 45%;
      object-fit: cover;
      min-height: 280px;
      background: #eef2f6;
    }
    .deal-content {
      padding: 36px 32px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 {
      font-size: 2rem;
      font-weight: 700;
    }
    .deal-content .muted {
      color: var(--text-muted);
      margin: 4px 0 16px;
    }
    .timer {
      display: flex;
      gap: 12px;
      margin: 12px 0 18px;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 14px;
      border-radius: var(--radius-sm);
      min-width: 70px;
      text-align: center;
      font-weight: 600;
    }
    .time-box div:first-child {
      font-size: 1.8rem;
      line-height: 1.2;
    }
    .time-box div:last-child {
      font-size: 0.7rem;
      opacity: 0.7;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 16px;
      margin: 6px 0 10px;
    }
    .deal-price .price {
      font-size: 2rem;
    }
    .deal-discount {
      background: #ef4444;
      color: white;
      padding: 4px 14px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 0.9rem;
    }
    .stock-badge {
      background: #fef3c7;
      color: #92400e;
      padding: 4px 14px;
      border-radius: 60px;
      font-size: 0.8rem;
      font-weight: 600;
      display: inline-block;
    }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
    }
    .testimonial {
      min-width: 300px;
      background: var(--surface);
      border-radius: var(--radius-md);
      padding: 24px;
      border: 1px solid var(--border-light);
      box-shadow: var(--shadow-card);
      flex-shrink: 0;
    }
    .testimonial .rating {
      font-size: 1.1rem;
    }
    .testimonial p {
      margin: 12px 0;
      color: var(--primary);
    }
    .testimonial .author {
      display: flex;
      align-items: center;
      gap: 14px;
      margin-top: 8px;
    }
    .testimonial .author img {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      background: #ddd;
    }

    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius-xl);
      padding: 48px 32px;
      text-align: center;
      border: 1px solid rgba(255,255,255,0.04);
    }
    .newsletter-box h3 {
      font-size: 2rem;
      font-weight: 700;
    }
    .newsletter-box p {
      opacity: 0.7;
      margin-bottom: 20px;
    }
    .newsletter-box form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .newsletter-box input {
      padding: 14px 24px;
      border-radius: 60px;
      border: none;
      width: 320px;
      max-width: 100%;
      font-size: 1rem;
    }
    .newsletter-box .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 8px 20px -6px rgba(40, 116, 240, 0.4);
    }
    .newsletter-box .btn-primary:hover {
      background: var(--accent-hover);
    }

    /* footer */
    footer {
      margin-top: 32px;
      border-top: 1px solid var(--border-light);
      padding: 40px 0 24px;
      color: var(--text-muted);
      background: white;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      justify-content: space-between;
    }
    .footer-brand {
      max-width: 280px;
    }
    .footer-brand h4 {
      font-size: 1.5rem;
      color: var(--primary);
      font-weight: 700;
    }
    .footer-links {
      display: flex;
      gap: 48px;
    }
    .footer-links div {
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .footer-links div strong {
      color: var(--primary);
      font-weight: 600;
    }
    .footer-links a {
      color: var(--text-muted);
      text-decoration: none;
      transition: var(--transition);
    }
    .footer-links a:hover {
      color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      margin-top: 32px;
      font-size: 0.85rem;
      border-top: 1px solid var(--border-light);
      padding-top: 24px;
    }

    /* responsive */
    @media (max-width: 1024px) {
      .grid-products { grid-template-columns: repeat(3, 1fr); }
      .grid-categories { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 820px) {
      .grid-products { grid-template-columns: repeat(2, 1fr); }
      .grid-categories { grid-template-columns: repeat(2, 1fr); }
      .deal-card { flex-direction: column; }
      .deal-card img { width: 100%; height: 220px; }
      nav.main-nav { display: none; }
      .mobile-toggle { display: block; }
      .search-wrapper { min-width: 160px; }
    }
    @media (max-width: 600px) {
      .grid-products { grid-template-columns: 1fr; }
      .grid-categories { grid-template-columns: 1fr; }
      .hero { padding: 36px 24px; }
      .hero-content h1 { font-size: 2.2rem; }
      .header-inner { flex-wrap: wrap; }
      .search-wrapper { width: 100%; order: 3; }
      .footer-grid { flex-direction: column; }
      .footer-links { flex-wrap: wrap; gap: 24px; }
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:8px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-cube"></i> Kart<span class="accent">Vibe</span></a>
      </div>

      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Offers</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:12px;flex:1;justify-content:flex-end;">
        <div class="search-wrapper">
          <input type="search" id="searchInput" placeholder="Search products..." />
          <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn" title="wishlist"><i class="far fa-heart"></i></button>
          <button class="cart" id="cartBtn">
            <i class="fas fa-shopping-bag"></i>
            <span class="cart-count" id="cartCount">0</span>
          </button>
        </div>
      </div>
    </div>
    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none; background:white; border-top:1px solid var(--border-light); padding:12px 24px;">
      <ul style="list-style:none;display:flex;flex-direction:column;gap:10px;">
        <li><a href="#">Home</a></li>
        <li><a href="#">Categories</a></li>
        <li><a href="#">Trending</a></li>
        <li><a href="#deals">Offers</a></li>
      </ul>
    </div>
  </header>

  <main class="container">
    <!-- hero -->
    <section class="hero">
      <div class="hero-content">
        <div class="hero-badge"><i class="fas fa-bolt" style="margin-right:6px;"></i> mega savings</div>
        <h1>New <i>Season</i> <br />Smart Picks</h1>
        <p>Discover the latest in fashion, tech & accessories. Free shipping on all orders.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-ghost" id="exploreDeals">Explore offers</button>
        </div>
      </div>
    </section>

    <!-- categories -->
    <section class="section" aria-labelledby="cat-title">
      <div class="section-header">
        <h2 id="cat-title">Shop by category</h2>
        <span class="muted">curated for you</span>
      </div>
      <div class="grid-categories" id="categoriesGrid"></div>
    </section>

    <!-- products -->
    <section class="section" aria-labelledby="prod-title">
      <div class="section-header">
        <h2 id="prod-title">Trending now</h2>
        <span class="muted">popular picks</span>
      </div>
      <div class="grid-products" id="productsGrid"></div>
    </section>

    <!-- deal -->
    <section id="deals" class="section" aria-labelledby="deals-title">
      <div class="section-header">
        <h2 id="deals-title">Flash sale</h2>
        <span class="muted">limited time</span>
      </div>
      <div class="deal-card">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2" />
        <div class="deal-content">
          <h3>MacBook Air M2</h3>
          <div class="muted">Thin, light, and powerful</div>
          <div class="timer" id="dealTimer">
            <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
          </div>
          <div class="deal-price">
            <span class="price">$999</span>
            <span class="old-price">$1,199</span>
            <span class="deal-discount">-17%</span>
          </div>
          <div style="margin: 12px 0;">
            <span class="stock-badge"><i class="fas fa-circle" style="color:#22c55e;font-size:0.6rem;margin-right:6px;"></i> 12 left</span>
          </div>
          <div>
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Buy now</button>
          </div>
        </div>
      </div>
    </section>

    <!-- testimonials -->
    <section class="section" aria-labelledby="test-title">
      <div class="section-header">
        <h2 id="test-title">What customers say</h2>
        <span class="muted">real reviews</span>
      </div>
      <div class="testimonials-scroll" id="testimonials">
        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p>"Smooth experience, fast delivery. The product quality blew me away."</p>
          <div class="author">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava" />
            <div><strong>Ava Martin</strong><div style="font-size:0.8rem;color:var(--text-muted);">verified buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating">★★★★☆</div>
          <p>"Great selection and the interface is beautiful. Will be a regular."</p>
          <div class="author">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael" />
            <div><strong>Michael Lee</strong><div style="font-size:0.8rem;color:var(--text-muted);">frequent buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p>"Outstanding customer support and super fast shipping."</p>
          <div class="author">
            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80" alt="David" />
            <div><strong>David Chen</strong><div style="font-size:0.8rem;color:var(--text-muted);">first-time buyer</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- newsletter -->
    <section class="section" aria-labelledby="news-title">
      <div class="newsletter-box">
        <h3 id="news-title">Stay in the loop</h3>
        <p>Subscribe for exclusive offers & early access</p>
        <form id="newsletterForm" style="display:flex;justify-content:center;gap:12px;flex-wrap:wrap;">
          <input type="email" id="newsletterEmail" placeholder="your@email.com" required />
          <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:16px;font-size:0.95rem;display:none;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="footer-brand">
          <h4><i class="fas fa-cube" style="color:var(--accent);margin-right:8px;"></i> KartVibe</h4>
          <p style="margin-top:8px;opacity:0.7;">Modern e‑commerce demo with a fresh vibe.</p>
          <div style="display:flex;gap:12px;margin-top:12px;">
            <a href="#" style="color:var(--text-muted);font-size:1.2rem;"><i class="fab fa-facebook"></i></a>
            <a href="#" style="color:var(--text-muted);font-size:1.2rem;"><i class="fab fa-twitter"></i></a>
            <a href="#" style="color:var(--text-muted);font-size:1.2rem;"><i class="fab fa-instagram"></i></a>
          </div>
        </div>
        <div class="footer-links">
          <div><strong>Company</strong><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
          <div><strong>Support</strong><a href="#">Help Center</a><a href="#">Shipping</a><a href="#">Contact</a></div>
          <div><strong>Legal</strong><a href="#">Privacy</a><a href="#">Terms</a></div>
        </div>
      </div>
      <div class="footer-bottom">© <span id="year"></span> KartVibe. All rights reserved.</div>
    </div>
  </footer>

  <script>
    // ----- data -----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
      { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, img
