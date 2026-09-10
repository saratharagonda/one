<!doctype html>
<html lang="en" data-theme="light">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="color-scheme" content="light dark">
<title>NexusShop — Modern Blue Edition</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<style>
:root{
  --bg:#f6f7fb;--surface:#fff;--surface-2:#f0f2f7;--text:#151827;--muted:#697086;
  --primary:#2563eb;--primary-2:#38bdf8;--accent:#06b6d4;--success:#10b981;
  --border:rgba(21,24,39,.09);--shadow:0 10px 35px rgba(21,24,39,.08);
  --shadow-lg:0 24px 70px rgba(21,24,39,.16);--radius:20px;--ease:.25s ease;
}
html[data-theme="dark"]{
  --bg:#0b0e16;--surface:#121725;--surface-2:#1a2030;--text:#f3f5fb;--muted:#a4acc0;
  --border:rgba(255,255,255,.09);--shadow:0 10px 35px rgba(0,0,0,.28);--shadow-lg:0 24px 70px rgba(0,0,0,.5);
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:Inter,system-ui,sans-serif;background:var(--bg);color:var(--text);line-height:1.5}
button,input,select{font:inherit}button{cursor:pointer;border:0;color:inherit}a{text-decoration:none;color:inherit}
.container{width:min(1240px,calc(100% - 36px));margin:auto}
.hidden{display:none!important}
.muted{color:var(--muted)}
.topbar{background:var(--text);color:var(--bg);font-size:12px;padding:8px 0}
.topbar .container{display:flex;justify-content:space-between;gap:12px}
header{position:sticky;top:0;z-index:50;background:color-mix(in srgb,var(--surface) 88%,transparent);backdrop-filter:blur(18px);border-bottom:1px solid var(--border)}
.nav{height:74px;display:flex;align-items:center;gap:24px}
.logo{display:flex;align-items:center;gap:10px;font-size:21px;font-weight:800;white-space:nowrap}
.logo i{color:var(--primary);font-size:24px}.logo b{color:var(--primary)}
nav{display:flex;gap:4px;flex:1;justify-content:center}
nav a{padding:10px 14px;border-radius:12px;color:var(--muted);font-size:14px;font-weight:600}
nav a:hover,nav a.active{background:var(--surface-2);color:var(--text)}
.actions{display:flex;align-items:center;gap:7px}
.icon{width:42px;height:42px;border-radius:12px;background:transparent;display:grid;place-items:center;position:relative}
.icon:hover{background:var(--surface-2)}
.badge-count{position:absolute;right:1px;top:0;background:var(--accent);color:#fff;border:2px solid var(--surface);min-width:19px;height:19px;border-radius:20px;font-size:10px;font-weight:800;display:grid;place-items:center}
.theme-toggle{background:var(--surface-2)}
.mobile{display:none}
.hero{margin-top:22px;border-radius:28px;overflow:hidden;min-height:500px;display:flex;align-items:center;position:relative;background:
linear-gradient(110deg,rgba(10,13,25,.93) 0%,rgba(15,30,60,.78) 55%,rgba(37,99,235,.55) 100%),
url('https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85') center/cover}
.hero .container{position:relative;padding:70px 0}.eyebrow{display:inline-flex;gap:8px;align-items:center;color:#fff;background:rgba(255,255,255,.12);border:1px solid rgba(255,255,255,.18);padding:8px 14px;border-radius:99px;font-size:12px;font-weight:700}
.hero h1{font-family:"Playfair Display",serif;color:#fff;font-size:clamp(40px,6vw,72px);line-height:1.04;max-width:720px;margin:18px 0 16px}
.hero p{color:rgba(255,255,255,.78);max-width:590px;font-size:17px}
.hero-actions{display:flex;gap:12px;flex-wrap:wrap;margin-top:28px}
.btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;padding:12px 19px;border-radius:13px;font-weight:700;transition:var(--ease);border:1px solid transparent}
.btn:hover{transform:translateY(-2px)}.btn-primary{background:var(--primary);color:#fff;box-shadow:0 10px 25px rgba(37,99,235,.30)}
.btn-light{background:#fff;color:#151827}.btn-ghost{border-color:rgba(255,255,255,.25);color:#fff;background:rgba(255,255,255,.08)}
.stats{display:grid;grid-template-columns:repeat(3,1fr);gap:14px;max-width:700px;margin-top:34px}
.stat{background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.12);padding:15px;border-radius:15px;color:#fff}
.stat strong{display:block;font-size:20px}.stat span{font-size:11px;opacity:.7}
.section{padding:64px 0}.section-head{display:flex;justify-content:space-between;align-items:end;gap:20px;margin-bottom:24px}
.section-head h2{font-size:30px;letter-spacing:-.5px}.section-head p{color:var(--muted);font-size:14px;margin-top:3px}
.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:13px}
.cat{background:var(--surface);border:1px solid var(--border);border-radius:18px;padding:20px 10px;text-align:center;box-shadow:var(--shadow);transition:var(--ease);cursor:pointer}
.cat:hover,.cat.selected{transform:translateY(-4px);border-color:var(--primary)}
.cat .cat-icon{width:52px;height:52px;margin:0 auto 10px;border-radius:15px;background:color-mix(in srgb,var(--primary) 13%,var(--surface));color:var(--primary);display:grid;place-items:center;font-size:21px}
.cat h4{font-size:13px}.cat small{color:var(--muted);font-size:11px}
.toolbar{display:flex;gap:10px;align-items:center;flex-wrap:wrap;margin-bottom:22px}
.search{display:flex;align-items:center;gap:9px;background:var(--surface);border:1px solid var(--border);padding:0 14px;border-radius:13px;min-width:260px;flex:1;max-width:450px}
.search input{width:100%;border:0;outline:0;background:transparent;color:var(--text);padding:12px 0}
select{border:1px solid var(--border);background:var(--surface);color:var(--text);padding:11px 13px;border-radius:13px;outline:0}
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.card{background:var(--surface);border:1px solid var(--border);border-radius:20px;overflow:hidden;box-shadow:var(--shadow);transition:var(--ease);display:flex;flex-direction:column}
.card:hover{transform:translateY(-6px);box-shadow:var(--shadow-lg)}
.product-img{height:245px;background:var(--surface-2);position:relative;overflow:hidden}
.product-img img{width:100%;height:100%;object-fit:cover;transition:.45s}
.card:hover .product-img img{transform:scale(1.055)}
.tag{position:absolute;left:12px;top:12px;background:var(--primary);color:#fff;padding:5px 9px;border-radius:8px;font-size:10px;font-weight:800}
.tag.sale{background:var(--accent)}
.wish{position:absolute;right:12px;top:12px;width:37px;height:37px;border-radius:50%;background:rgba(255,255,255,.9);color:#333;display:grid;place-items:center}
.wish.active{color:var(--accent)}
.product-body{padding:16px;display:flex;flex-direction:column;gap:6px;flex:1}
.category{color:var(--muted);font-size:10px;text-transform:uppercase;font-weight:800;letter-spacing:.7px}
.product-title{font-weight:700;font-size:15px;line-height:1.3}
.rating{color:#f5a623;font-size:12px}.rating span{color:var(--muted)}
.price{font-size:19px;font-weight:800}.old{text-decoration:line-through;color:var(--muted);font-size:12px;margin-left:5px}
.product-footer{padding:0 16px 16px;display:flex;gap:8px}
.add{flex:1;background:var(--text);color:var(--bg);padding:10px;border-radius:11px;font-weight:700;font-size:13px}
.add:hover{background:var(--primary)}.quick{width:42px;border:1px solid var(--border);border-radius:11px;background:var(--surface-2)}
.empty{grid-column:1/-1;text-align:center;padding:50px;color:var(--muted)}
.deal{display:grid;grid-template-columns:1fr 1fr;border-radius:24px;overflow:hidden;background:var(--surface);border:1px solid var(--border);box-shadow:var(--shadow)}
.deal-image{min-height:380px;background:url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85') center/cover}
.deal-copy{padding:45px;display:flex;justify-content:center;flex-direction:column}.pill{color:var(--accent);font-weight:800;font-size:12px;text-transform:uppercase}
.deal-copy h3{font-size:35px;margin:8px 0}.deal-copy p{color:var(--muted);max-width:480px}.deal-price{font-size:30px;font-weight:800;margin:17px 0}
.timer{display:flex;gap:9px;margin-bottom:22px}.time{background:var(--text);color:var(--bg);min-width:65px;text-align:center;padding:9px;border-radius:11px}.time strong{display:block;font-size:21px}.time small{font-size:9px;color:var(--muted)}
.testimonials{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}.review{background:var(--surface);border:1px solid var(--border);padding:23px;border-radius:18px;box-shadow:var(--shadow)}
.review .stars{color:#f5a623}.review p{margin:12px 0;color:var(--muted);font-size:14px}.person{display:flex;gap:10px;align-items:center}.avatar{width:38px;height:38px;border-radius:50%;object-fit:cover}.person b{font-size:13px}.person small{display:block;color:var(--muted)}
.newsletter{border-radius:24px;padding:40px;background:linear-gradient(135deg,#0f172a,#1e3a5f);color:#fff;display:flex;align-items:center;justify-content:space-between;gap:30px}
.newsletter h3{font-size:28px}.newsletter p{opacity:.7;font-size:14px}.news-form{display:flex;gap:8px;max-width:470px;width:100%}.news-form input{flex:1;border:0;border-radius:12px;padding:13px 15px;outline:0}
footer{border-top:1px solid var(--border);padding:42px 0 25px}.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:30px}.footer-grid h5{margin-bottom:12px}.footer-grid li{list-style:none;color:var(--muted);font-size:13px;margin:7px 0}.socials{display:flex;gap:8px;margin-top:15px}.socials a{width:36px;height:36px;background:var(--surface-2);border-radius:10px;display:grid;place-items:center;color:var(--muted)}
.toast{position:fixed;right:20px;bottom:20px;z-index:100;background:var(--text);color:var(--bg);padding:13px 17px;border-radius:13px;box-shadow:var(--shadow-lg);transform:translateY(120px);opacity:0;transition:.3s;font-size:13px}.toast.show{transform:none;opacity:1}
.overlay{position:fixed;inset:0;background:rgba(0,0,0,.55);z-index:80;opacity:0;pointer-events:none;transition:.25s}.overlay.show{opacity:1;pointer-events:auto}
.drawer{position:fixed;right:0;top:0;height:100%;width:min(430px,100%);background:var(--surface);z-index:90;transform:translateX(100%);transition:.3s;display:flex;flex-direction:column;box-shadow:var(--shadow-lg)}
.drawer.open{transform:none}.drawer-head{padding:20px;border-bottom:1px solid var(--border);display:flex;justify-content:space-between}.drawer-items{padding:15px;overflow:auto;flex:1}.cart-item{display:grid;grid-template-columns:65px 1fr auto;gap:10px;align-items:center;padding:10px 0;border-bottom:1px solid var(--border)}.cart-item img{width:65px;height:65px;object-fit:cover;border-radius:10px}.cart-item b{font-size:13px}.qty{display:flex;gap:6px;align-items:center;margin-top:6px}.qty button{width:25px;height:25px;background:var(--surface-2);border-radius:7px}.drawer-foot{padding:18px;border-top:1px solid var(--border)}.total{display:flex;justify-content:space-between;font-size:18px;font-weight:800;margin-bottom:12px}
.modal{position:fixed;z-index:95;left:50%;top:50%;transform:translate(-50%,-45%) scale(.96);width:min(760px,calc(100% - 28px));background:var(--surface);border-radius:22px;box-shadow:var(--shadow-lg);opacity:0;pointer-events:none;transition:.25s;overflow:hidden}.modal.show{opacity:1;pointer-events:auto;transform:translate(-50%,-50%) scale(1)}.modal-grid{display:grid;grid-template-columns:1fr 1fr}.modal-grid img{width:100%;height:100%;min-height:360px;object-fit:cover}.modal-copy{padding:30px}.modal-close{position:absolute;right:12px;top:12px;width:38px;height:38px;border-radius:50%;background:rgba(0,0,0,.1)}
@media(max-width:1050px){.products{grid-template-columns:repeat(3,1fr)}.categories{grid-template-columns:repeat(3,1fr)}nav{display:none}.mobile{display:grid}.footer-grid{grid-template-columns:1fr 1fr}}
@media(max-width:760px){.topbar{display:none}.nav{height:65px}.container{width:min(100% - 24px,1240px)}.hero{min-height:560px;border-radius:20px}.hero .container{padding:45px 0}.stats{grid-template-columns:1fr}.section{padding:45px 0}.products{grid-template-columns:repeat(2,1fr);gap:10px}.categories{grid-template-columns:repeat(2,1fr)}.product-img{height:190px}.deal{grid-template-columns:1fr}.deal-image{min-height:240px}.deal-copy{padding:25px}.testimonials{grid-template-columns:1fr}.newsletter{padding:28px;flex-direction:column;align-items:stretch}.news-form{max-width:none}.footer-grid{grid-template-columns:1fr 1fr}.search{min-width:100%}.toolbar select{flex:1}.section-head h2{font-size:24px}}
@media(max-width:430px){.products{grid-template-columns:1fr 1fr}.product-img{height:155px}.product-title{font-size:13px}.product-body{padding:12px}.product-footer{padding:0 12px 12px}.add{font-size:11px}.logo span{display:none}.hero h1{font-size:39px}}
</style>
</head>
<body>
<div class="topbar"><div class="container"><span><i class="fa-solid fa-truck-fast"></i> Free shipping over $75</span><span>Secure checkout · 30-day returns</span></div></div>

<header>
  <div class="container nav">
    <button class="icon mobile" id="mobileBtn" aria-label="Open menu"><i class="fa-solid fa-bars"></i></button>
    <a class="logo" href="#"><i class="fa-solid fa-bag-shopping"></i><span>Nexus<b>Shop</b></span></a>
    <nav id="nav">
      <a class="active" href="#home">Home</a><a href="#categories">Categories</a><a href="#products">Trending</a><a href="#deals">Deals</a><a href="#reviews">Reviews</a>
    </nav>
    <div class="actions">
      <button class="icon theme-toggle" id="themeBtn" title="Toggle theme" aria-label="Toggle theme"><i class="fa-solid fa-moon"></i></button>
      <button class="icon" id="wishlistBtn" title="Wishlist"><i class="fa-regular fa-heart"></i><span class="badge-count hidden" id="wishCount">0</span></button>
      <button class="icon" id="cartBtn" title="Cart"><i class="fa-solid fa-bag-shopping"></i><span class="badge-count" id="cartCount">0</span></button>
    </div>
  </div>
  <div class="container hidden" id="mobileNav" style="padding-bottom:12px">
    <nav style="display:grid;justify-content:stretch"><a href="#home">Home</a><a href="#categories">Categories</a><a href="#products">Trending</a><a href="#deals">Deals</a><a href="#reviews">Reviews</a></nav>
  </div>
</header>

<main id="home">
<section class="hero"><div class="container">
  <span class="eyebrow"><i class="fa-solid fa-sparkles"></i> New season · curated for you</span>
  <h1>Everything you want. One beautiful store.</h1>
  <p>Discover premium tech, fashion and everyday essentials with a faster, cleaner shopping experience.</p>
  <div class="hero-actions"><button class="btn btn-primary" onclick="scrollToId('products')">Shop collection <i class="fa-solid fa-arrow-right"></i></button><button class="btn btn-ghost" onclick="scrollToId('deals')">View flash deals</button></div>
  <div class="stats"><div class="stat"><strong>10K+</strong><span>Happy customers</span></div><div class="stat"><strong>4.9/5</strong><span>Average rating</span></div><div class="stat"><strong>24h</strong><span>Fast dispatch</span></div></div>
</div></section>

<section class="section" id="categories"><div class="container">
  <div class="section-head"><div><h2>Shop by category</h2><p>Start with what you're looking for.</p></div></div>
  <div class="categories" id="categoriesGrid"></div>
</div></section>

<section class="section" id="products"><div class="container">
  <div class="section-head"><div><h2>Trending now</h2><p id="resultText">Popular picks from the community.</p></div></div>
  <div class="toolbar">
    <div class="search"><i class="fa-solid fa-magnifying-glass muted"></i><input id="search" placeholder="Search products, categories..." autocomplete="off"></div>
    <select id="categoryFilter"><option value="all">All categories</option></select>
    <select id="sort"><option value="featured">Featured</option><option value="priceLow">Price: Low to high</option><option value="priceHigh">Price: High to low</option><option value="rating">Top rated</option></select>
    <button class="btn" style="background:var(--surface-2)" id="clearBtn"><i class="fa-solid fa-rotate-left"></i> Reset</button>
  </div>
  <div class="products" id="productsGrid"></div>
</div></section>

<section class="section" id="deals"><div class="container">
  <div class="section-head"><div><h2>⚡ Flash deal</h2><p>Limited-time price on a customer favorite.</p></div></div>
  <div class="deal"><div class="deal-image"></div><div class="deal-copy">
    <span class="pill">Limited offer · 25% off</span><h3>MacBook Air M2</h3><p>Thin, light and powerful. Perfect for work, study and creative projects.</p>
    <div class="deal-price">$999 <span class="old">$1,199</span></div>
    <div class="timer"><div class="time"><strong id="dd">00</strong><small>DAYS</small></div><div class="time"><strong id="hh">00</strong><small>HOURS</small></div><div class="time"><strong id="mm">00</strong><small>MINS</small></div><div class="time"><strong id="ss">00</strong><small>SECS</small></div></div>
    <button class="btn btn-primary" id="dealAdd"><i class="fa-solid fa-cart-plus"></i> Add deal to cart</button>
  </div></div>
</div></section>

<section class="section" id="reviews"><div class="container">
  <div class="section-head"><div><h2>Customers love NexusShop</h2><p>Real feedback from our demo community.</p></div></div>
  <div class="testimonials" id="reviewsGrid"></div>
</div></section>

<section class="section"><div class="container"><div class="newsletter"><div><h3>Stay in the loop</h3><p>Get new arrivals, exclusive offers and useful updates.</p></div><form class="news-form" id="newsForm"><input type="email" id="email" placeholder="Your email address" required><button class="btn btn-primary">Subscribe</button></form></div></div></section>
</main>

<footer><div class="container"><div class="footer-grid">
  <div><a class="logo" href="#"><i class="fa-solid fa-bag-shopping"></i><span>Nexus<b>Shop</b></span></a><p class="muted" style="margin-top:10px;max-width:300px;font-size:13px">A polished, responsive e-commerce front-end demo with light and dark themes.</p><div class="socials"><a href="#"><i class="fa-brands fa-facebook-f"></i></a><a href="#"><i class="fa-brands fa-instagram"></i></a><a href="#"><i class="fa-brands fa-x-twitter"></i></a><a href="#"><i class="fa-brands fa-youtube"></i></a></div></div>
  <div><h5>Shop</h5><ul><li><a href="#products">All products</a></li><li><a href="#categories">Categories</a></li><li><a href="#deals">Deals</a></li></ul></div>
  <div><h5>Support</h5><ul><li><a href="#">Help center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
  <div><h5>Company</h5><ul><li><a href="#">About us</a></li><li><a href="#">Contact</a></li><li><a href="#">Privacy</a></li></ul></div>
</div><p class="muted" style="border-top:1px solid var(--border);padding-top:18px;margin-top:28px;text-align:center;font-size:12px">© <span id="year"></span> NexusShop. All rights reserved.</p></div></footer>

<div class="toast" id="toast"></div><div class="overlay" id="overlay"></div>
<aside class="drawer" id="drawer"><div class="drawer-head"><h3>Your cart</h3><button class="icon" id="closeCart"><i class="fa-solid fa-xmark"></i></button></div><div class="drawer-items" id="cartItems"></div><div class="drawer-foot"><div class="total"><span>Total</span><span id="cartTotal">$0</span></div><button class="btn btn-primary" style="width:100%" id="checkout">Proceed to checkout <i class="fa-solid fa-arrow-right"></i></button></div></aside>

<div class="modal" id="modal"><button class="modal-close" id="modalClose"><i class="fa-solid fa-xmark"></i></button><div class="modal-grid"><img id="modalImg" alt=""><div class="modal-copy"><div class="category" id="modalCat"></div><h2 id="modalTitle" style="margin:7px 0"></h2><div class="rating" id="modalRating"></div><p class="muted" id="modalDesc" style="margin:16px 0"></p><div class="deal-price" id="modalPrice"></div><button class="btn btn-primary" id="modalAdd"><i class="fa-solid fa-cart-plus"></i> Add to cart</button></div></div></div>

<script>
const CATEGORIES=[
 {id:'phones',name:'Smartphones',icon:'fa-mobile-screen-button',count:24},
 {id:'laptops',name:'Laptops',icon:'fa-laptop',count:18},
 {id:'clothing',name:'Clothing',icon:'fa-shirt',count:42},
 {id:'gadgets',name:'Gadgets',icon:'fa-headphones',count:31},
 {id:'footwear',name:'Footwear',icon:'fa-shoe-prints',count:27},
 {id:'accessories',name:'Accessories',icon:'fa-watch',count:39}
];
const PRODUCTS=[
{id:1,title:'iPhone 14 Pro Max',price:1099,old:1199,rating:5,reviews:128,badge:'New',cat:'Smartphones',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',desc:'Premium smartphone with a stunning display, powerful performance and pro-grade camera system.'},
{id:2,title:'MacBook Pro 14"',price:1999,rating:4.8,reviews:86,badge:'',cat:'Laptops',img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',desc:'A powerful laptop designed for demanding work, creative tasks and everyday productivity.'},
{id:3,title:'Apple Watch Series 8',price:349,old:399,rating:5,reviews:214,badge:'Sale',cat:'Accessories',img:'https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85',desc:'Smart health and fitness tracking with notifications, activity insights and a beautiful display.'},
{id:4,title:'Nike Air Max 270',price:150,rating:4.4,reviews:53,badge:'',cat:'Footwear',img:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85',desc:'Comfortable everyday sneakers with a bold silhouette and responsive cushioning.'},
{id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,badge:'New',cat:'Gadgets',img:'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85',desc:'Full-frame mirrorless camera for high-quality photography and video creation.'},
{id:6,title:'Chanel No. 5',price:120,rating:4.9,reviews:189,badge:'',cat:'Accessories',img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',desc:'An iconic fragrance presented as an elegant addition to your personal collection.'},
{id:7,title:'Travel Backpack',price:79,old:99,rating:4.5,reviews:67,badge:'Sale',cat:'Accessories',img:'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85',desc:'Durable everyday backpack with practical storage for commuting and travel.'},
{id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,badge:'',cat:'Gadgets',img:'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=700&q=85',desc:'Premium wireless headphones with immersive sound and active noise cancellation.'}
];
const REVIEWS=[
['Ava Martin','Verified Buyer','Fast shipping and excellent support. The product exceeded my expectations!',5,'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80'],
['Michael Lee','Frequent Shopper','Great selection and a smooth shopping experience. Will definitely shop again.',4,'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80'],
['Sophia Chen','Designer','Love the quality and packaging. Everything arrived in perfect condition.',5,'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80']
];

let cart=JSON.parse(localStorage.getItem('nx-cart')||'[]');
let wishlist=JSON.parse(localStorage.getItem('nx-wishlist')||'[]');
let selectedProduct=null;

const $=s=>document.querySelector(s);
const money=n=>'$'+n.toLocaleString();
function save(){localStorage.setItem('nx-cart',JSON.stringify(cart));localStorage.setItem('nx-wishlist',JSON.stringify(wishlist));}
function toast(msg){const t=$('#toast');t.textContent=msg;t.classList.add('show');clearTimeout(window.toastTimer);window.toastTimer=setTimeout(()=>t.classList.remove('show'),2300)}
function scrollToId(id){document.getElementById(id).scrollIntoView({behavior:'smooth'})}

function renderCategories(){
 $('#categoriesGrid').innerHTML=CATEGORIES.map(c=>`<div class="cat" data-cat="${c.name}"><div class="cat-icon"><i class="fa-solid ${c.icon}"></i></div><h4>${c.name}</h4><small>${c.count} items</small></div>`).join('');
 $('#categoryFilter').innerHTML='<option value="all">All categories</option>'+CATEGORIES.map(c=>`<option>${c.name}</option>`).join('');
 document.querySelectorAll('.cat').forEach(x=>x.onclick=()=>{ $('#categoryFilter').value=x.dataset.cat; renderProducts(); scrollToId('products')});
}
function stars(r){return '★'.repeat(Math.round(r))+'☆'.repeat(5-Math.round(r))}
function renderProducts(){
 let q=$('#search').value.toLowerCase().trim(),cat=$('#categoryFilter').value,sort=$('#sort').value;
 let list=PRODUCTS.filter(p=>(!q||p.title.toLowerCase().includes(q)||p.cat.toLowerCase().includes(q))&&(cat==='all'||p.cat===cat));
 if(sort==='priceLow')list.sort((a,b)=>a.price-b.price); if(sort==='priceHigh')list.sort((a,b)=>b.price-a.price); if(sort==='rating')list.sort((a,b)=>b.rating-a.rating);
 $('#resultText').textContent=list.length?`${list.length} product${list.length>1?'s':''} found · curated picks for you.`:'No products match your search.';
 $('#productsGrid').innerHTML=list.length?list.map(p=>`<article class="card">
 <div class="product-img"><img src="${p.img}" alt="${p.title}" loading="lazy">${p.badge?`<span class="tag ${p.badge==='Sale'?'sale':''}">${p.badge}</span>`:''}<button class="wish ${wishlist.includes(p.id)?'active':''}" data-wish="${p.id}" aria-label="Wishlist"><i class="${wishlist.includes(p.id)?'fa-solid':'fa-regular'} fa-heart"></i></button></div>
 <div class="product-body"><span class="category">${p.cat}</span><div class="product-title">${p.title}</div><div class="rating">${stars(p.rating)} <span>(${p.reviews})</span></div><div><span class="price">${money(p.price)}</span>${p.old?`<span class="old">${money(p.old)}</span>`:''}</div></div>
 <div class="product-footer"><button class="add" data-add="${p.id}"><i class="fa-solid fa-cart-plus"></i> Add to cart</button><button class="quick" data-quick="${p.id}" title="Quick view"><i class="fa-regular fa-eye"></i></button></div></article>`).join(''):'<div class="empty"><i class="fa-solid fa-box-open" style="font-size:30px;margin-bottom:10px"></i><br>No products found.<br><button class="btn" style="margin-top:14px;background:var(--surface-2)" onclick="resetFilters()">Clear filters</button></div>';
 document.querySelectorAll('[data-add]').forEach(b=>b.onclick=()=>addCart(+b.dataset.add));
 document.querySelectorAll('[data-wish]').forEach(b=>b.onclick=()=>toggleWish(+b.dataset.wish));
 document.querySelectorAll('[data-quick]').forEach(b=>b.onclick=()=>openModal(+b.dataset.quick));
}
function resetFilters(){$('#search').value='';$('#categoryFilter').value='all';$('#sort').value='featured';renderProducts()}
function addCart(id){const p=PRODUCTS.find(x=>x.id===id),item=cart.find(x=>x.id===id);if(item)item.qty++;else cart.push({id,qty:1});save();updateCart();toast(`${p.title} added to cart`)}
function removeCart(id){cart=cart.filter(x=>x.id!==id);save();updateCart()}
function changeQty(id,d){const i=cart.find(x=>x.id===id);if(!i)return;i.qty+=d;if(i.qty<=0)removeCart(id);else{save();updateCart()}}
function updateCart(){
 let count=cart.reduce((n,x)=>n+x.qty,0),total=cart.reduce((n,x)=>{let p=PRODUCTS.find(y=>y.id===x.id);return n+p.price*x.qty},0);
 $('#cartCount').textContent=count;$('#cartTotal').textContent=money(total);
 $('#cartItems').innerHTML=cart.length?cart.map(x=>{let p=PRODUCTS.find(y=>y.id===x.id);return `<div class="cart-item"><img src="${p.img}" alt=""><div><b>${p.title}</b><div class="muted">${money(p.price)}</div><div class="qty"><button onclick="changeQty(${p.id},-1)">−</button><span>${x.qty}</span><button onclick="changeQty(${p.id},1)">+</button></div></div><button class="icon" onclick="removeCart(${p.id})"><i class="fa-solid fa-trash"></i></button></div>`}).join(''):`<div class="empty"><i class="fa-solid fa-bag-shopping" style="font-size:30px"></i><p style="margin-top:10px">Your cart is empty.</p></div>`;
}
function toggleWish(id){let p=PRODUCTS.find(x=>x.id===id);wishlist.includes(id)?(wishlist=wishlist.filter(x=>x!==id),toast(`${p.title} removed from wishlist`)):(wishlist.push(id),toast(`${p.title} saved to wishlist`));save();updateWish();renderProducts()}
function updateWish(){$('#wishCount').textContent=wishlist.length;$('#wishCount').classList.toggle('hidden',!wishlist.length)}
function openModal(id){selectedProduct=PRODUCTS.find(x=>x.id===id);$('#modalImg').src=selectedProduct.img;$('#modalTitle').textContent=selectedProduct.title;$('#modalCat').textContent=selectedProduct.cat;$('#modalRating').textContent=`${stars(selectedProduct.rating)} (${selectedProduct.reviews} reviews)`;$('#modalDesc').textContent=selectedProduct.desc;$('#modalPrice').innerHTML=money(selectedProduct.price)+(selectedProduct.old?` <span class="old">${money(selectedProduct.old)}</span>`:'');$('#modal').classList.add('show');$('#overlay').classList.add('show')}
function closeOverlays(){$('#modal').classList.remove('show');$('#drawer').classList.remove('open');$('#overlay').classList.remove('show')}
function openCart(){$('#drawer').classList.add('open');$('#overlay').classList.add('show')}

renderCategories();renderProducts();updateCart();updateWish();$('#year').textContent=new Date().getFullYear();

$('#search').oninput=renderProducts;$('#categoryFilter').onchange=renderProducts;$('#sort').onchange=renderProducts;$('#clearBtn').onclick=resetFilters;
$('#cartBtn').onclick=openCart;$('#closeCart').onclick=closeOverlays;$('#overlay').onclick=closeOverlays;$('#modalClose').onclick=closeOverlays;
$('#modalAdd').onclick=()=>{if(selectedProduct)addCart(selectedProduct.id);closeOverlays();openCart()};
$('#wishlistBtn').onclick=()=>{if(!wishlist.length)return toast('Your wishlist is empty');$('#search').value='';$('#categoryFilter').value='all';renderProducts();scrollToId('products');toast(`${wishlist.length} saved item${wishlist.length>1?'s':''} shown`)}
$('#dealAdd').onclick=()=>addCart(2);
$('#checkout').onclick=()=>cart.length?toast('Demo checkout ready — connect your payment flow here.'):toast('Your cart is empty.');
$('#newsForm').onsubmit=e=>{e.preventDefault();toast(`Thanks! Updates will be sent to ${$('#email').value}`);e.target.reset()};
$('#mobileBtn').onclick=()=>$('#mobileNav').classList.toggle('hidden');
document.querySelectorAll('#mobileNav a').forEach(a=>a.onclick=()=>$('#mobileNav').classList.add('hidden'));

function applyTheme(theme){document.documentElement.dataset.theme=theme;localStorage.setItem('nx-theme',theme);$('#themeBtn').innerHTML=theme==='dark'?'<i class="fa-solid fa-sun"></i>':'<i class="fa-solid fa-moon"></i>'}
applyTheme(localStorage.getItem('nx-theme')|| (matchMedia('(prefers-color-scheme: dark)').matches?'dark':'light'));
$('#themeBtn').onclick=()=>applyTheme(document.documentElement.dataset.theme==='dark'?'light':'dark');

let target=Date.now()+((18*60+42)*60*1000);
function tick(){let d=Math.max(0,target-Date.now()),sec=Math.floor(d/1000);$('#dd').textContent=String(Math.floor(sec/86400)).padStart(2,'0');$('#hh').textContent=String(Math.floor(sec%86400/3600)).padStart(2,'0');$('#mm').textContent=String(sec%3600/60).padStart(2,'0');$('#ss').textContent=String(sec%60).padStart(2,'0')}tick();setInterval(tick,1000);

$('#reviewsGrid').innerHTML=REVIEWS.map(r=>`<div class="review"><div class="stars">${stars(r[3])}</div><p>“${r[2]}”</p><div class="person"><img class="avatar" src="${r[4]}" alt="${r[0]}"><div><b>${r[0]}</b><small>${r[1]}</small></div></div></div>`).join('');
document.addEventListener('keydown',e=>{if(e.key==='Escape')closeOverlays()});
</script>
</body>
</html>
