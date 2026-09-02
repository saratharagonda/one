<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Orkut · Social Network</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Inter', system-ui, sans-serif; }
    :root {
      --orkut-blue: #3b7dd8;
      --orkut-light: #f1f9ff;
      --orkut-card: #ffffff;
      --orkut-border: #d0d7de;
      --orkut-text: #1b1f23;
      --orkut-muted: #57606a;
      --orkut-bg: #e8f0fe;
      --orkut-shadow: 0 2px 12px rgba(0, 0, 0, 0.06);
      --radius: 12px;
    }
    body {
      background: var(--orkut-bg);
      color: var(--orkut-text);
      line-height: 1.4;
      padding-top: 60px;
      font-family: 'Inter', sans-serif;
    }
    .header {
      position: fixed; top: 0; left: 0; width: 100%; z-index: 100;
      background: var(--orkut-card); border-bottom: 1px solid var(--orkut-border);
      padding: 8px 20px; display: flex; align-items: center; justify-content: space-between;
      height: 60px; box-shadow: 0 1px 4px rgba(0,0,0,0.04);
    }
    .logo {
      font-size: 28px; font-weight: 700; color: var(--orkut-blue);
      letter-spacing: -0.5px; display: flex; align-items: center; gap: 4px;
    }
    .logo i { font-size: 30px; color: var(--orkut-blue); }
    .search-bar {
      background: var(--orkut-bg); border-radius: 50px; padding: 6px 18px;
      display: flex; align-items: center; gap: 10px; min-width: 240px;
      border: 1px solid transparent; transition: 0.2s;
    }
    .search-bar:focus-within { background: white; border-color: var(--orkut-blue); box-shadow: 0 0 0 3px rgba(59,125,216,0.15); }
    .search-bar input { border: none; background: transparent; outline: none; font-size: 14px; width: 100%; }
    .search-bar i { color: var(--orkut-muted); }
    .header-nav { display: flex; align-items: center; gap: 4px; }
    .header-nav a {
      display: inline-flex; align-items: center; gap: 6px;
      padding: 6px 14px; border-radius: 50px; color: var(--orkut-text);
      font-size: 14px; font-weight: 500; transition: 0.15s;
    }
    .header-nav a:hover { background: var(--orkut-bg); }
    .header-nav a.active { background: var(--orkut-blue); color: white; }
    .header-right { display: flex; align-items: center; gap: 10px; }
    .avatar-small {
      width: 36px; height: 36px; border-radius: 50%;
      background: #ccd0d5; overflow: hidden; display: inline-flex;
      align-items: center; justify-content: center;
    }
    .avatar-small img { width: 100%; height: 100%; object-fit: cover; }
    .icon-btn {
      width: 40px; height: 40px; border-radius: 50%; border: none;
      background: transparent; color: var(--orkut-text); font-size: 18px;
      cursor: pointer; transition: 0.15s; display: inline-flex; align-items: center; justify-content: center;
    }
    .icon-btn:hover { background: var(--orkut-bg); }

    .container {
      max-width: 1100px; margin: 0 auto; padding: 0 16px;
      display: grid; grid-template-columns: 260px 1fr 280px; gap: 24px; margin-top: 24px;
    }
    .left-sidebar { position: sticky; top: 80px; align-self: start; }
    .sidebar-card {
      background: var(--orkut-card); border-radius: var(--radius);
      padding: 16px 14px; box-shadow: var(--orkut-shadow);
      border: 1px solid var(--orkut-border);
    }
    .sidebar-card .profile-card {
      text-align: center; padding: 8px 0;
    }
    .profile-card .avatar-large {
      width: 80px; height: 80px; border-radius: 50%; margin: 0 auto 8px;
      background: #ccd0d5; overflow: hidden; border: 3px solid var(--orkut-blue);
    }
    .profile-card .avatar-large img { width: 100%; height: 100%; object-fit: cover; }
    .profile-card h4 { font-weight: 600; margin: 4px 0; }
    .profile-card .sub { font-size: 13px; color: var(--orkut-muted); }
    .menu-item {
      display: flex; align-items: center; gap: 12px; padding: 10px 6px;
      border-radius: 8px; cursor: pointer; transition: 0.1s; font-weight: 500;
    }
    .menu-item:hover { background: var(--orkut-bg); }
    .menu-item i { width: 24px; color: var(--orkut-blue); font-size: 18px; }

    .feed { display: flex; flex-direction: column; gap: 20px; }
    .composer {
      background: var(--orkut-card); border-radius: var(--radius);
      padding: 16px; box-shadow: var(--orkut-shadow); border: 1px solid var(--orkut-border);
    }
    .composer-top { display: flex; gap: 12px; align-items: center; }
    .composer-top input {
      flex: 1; border: none; background: var(--orkut-bg); padding: 12px 18px;
      border-radius: 50px; font-size: 14px; outline: none; transition: 0.1s;
    }
    .composer-top input:focus { background: white; border: 1px solid var(--orkut-blue); }
    .composer-actions {
      display: flex; justify-content: space-around; margin-top: 12px;
      border-top: 1px solid var(--orkut-border); padding-top: 12px;
    }
    .composer-actions button {
      background: none; border: none; display: flex; align-items: center;
      gap: 6px; font-weight: 500; color: var(--orkut-muted); padding: 6px 14px;
      border-radius: 50px; cursor: pointer; transition: 0.1s; font-size: 13px;
    }
    .composer-actions button:hover { background: var(--orkut-bg); }
    .composer-actions button i { font-size: 18px; }
    .composer-actions .photo { color: #2d7a4b; }
    .composer-actions .feel { color: #e67e22; }

    .post {
      background: var(--orkut-card); border-radius: var(--radius);
      padding: 16px; box-shadow: var(--orkut-shadow); border: 1px solid var(--orkut-border);
      transition: opacity 0.2s;
    }
    .post-header { display: flex; gap: 12px; align-items: center; }
    .post-header .avatar-small { width: 44px; height: 44px; }
    .post-user { font-weight: 600; }
    .post-time { font-size: 12px; color: var(--orkut-muted); }
    .post-content { margin: 12px 0 8px; }
    .post-content p { font-size: 15px; line-height: 1.5; }
    .post-image { margin: 10px 0; border-radius: 8px; overflow: hidden; background: #e4e6eb; }
    .post-image img { width: 100%; max-height: 400px; object-fit: cover; display: block; }
    .post-stats {
      display: flex; justify-content: space-between; color: var(--orkut-muted);
      font-size: 13px; border-bottom: 1px solid var(--orkut-border);
      padding-bottom: 8px; margin-bottom: 8px;
    }
    .post-actions { display: flex; justify-content: space-around; }
    .post-actions button {
      background: none; border: none; display: flex; align-items: center;
      gap: 6px; padding: 6px 16px; border-radius: 50px;
      font-weight: 500; color: var(--orkut-muted); cursor: pointer;
      transition: 0.1s; font-size: 13px;
    }
    .post-actions button:hover { background: var(--orkut-bg); }
    .post-actions button.liked { color: var(--orkut-blue); }
    .post-actions button i { font-size: 16px; }

    .right-sidebar { position: sticky; top: 80px; align-self: start; }
    .chat-card {
      background: var(--orkut-card); border-radius: var(--radius);
      padding: 16px; box-shadow: var(--orkut-shadow); border: 1px solid var(--orkut-border);
    }
    .chat-card h4 { font-weight: 600; margin-bottom: 12px; display: flex; justify-content: space-between; }
    .friend-row {
      display: flex; align-items: center; gap: 10px; padding: 8px 0;
      border-radius: 8px; cursor: pointer; transition: 0.1s;
    }
    .friend-row:hover { background: var(--orkut-bg); }
    .friend-row .avatar-small { width: 32px; height: 32px; }
    .friend-name { font-weight: 500; font-size: 13px; }
    .online-dot {
      width: 8px; height: 8px; background: #2ecc71; border-radius: 50%;
      display: inline-block; margin-left: auto; border: 2px solid white;
    }
    .scrap-item {
      display: flex; gap: 10px; padding: 8px 0; border-bottom: 1px solid var(--orkut-border);
    }
    .scrap-item:last-child { border-bottom: none; }
    .scrap-item .scrap-text { font-size: 13px; color: var(--orkut-text); }
    .scrap-item .scrap-time { font-size: 11px; color: var(--orkut-muted); }

    @media (max-width: 1024px) {
      .container { grid-template-columns: 1fr; max-width: 680px; }
      .left-sidebar, .right-sidebar { display: none; }
      .search-bar { min-width: 140px; }
    }
    @media (max-width: 600px) {
      .header { padding: 4px 12px; }
      .search-bar { min-width: 100px; padding: 4px 12px; }
      .search-bar input { width: 70px; }
      .logo { font-size: 22px; }
      .header-nav a { padding: 4px 10px; font-size: 12px; }
    }
    .text-muted { color: var(--orkut-muted); }
  </style>
</head>
<body>
  <!-- HEADER -->
  <header class="header">
    <div class="logo"><i class="fas fa-user-circle"></i> Orkut</div>
    <div class="search-bar">
      <i class="fas fa-search"></i>
      <input type="text" placeholder="Search people, communities..." id="globalSearch" />
    </div>
    <div class="header-nav">
      <a href="#" class="active"><i class="fas fa-home"></i> Home</a>
      <a href="#"><i class="fas fa-users"></i> Community</a>
      <a href="#"><i class="fas fa-scroll"></i> Scraps</a>
    </div>
    <div class="header-right">
      <div class="avatar-small"><img src="https://i.pravatar.cc/40?img=11" alt="user" /></div>
      <button class="icon-btn"><i class="fas fa-bell"></i></button>
    </div>
  </header>

  <!-- MAIN -->
  <div class="container">
    <!-- left sidebar -->
    <aside class="left-sidebar">
      <div class="sidebar-card">
        <div class="profile-card">
          <div class="avatar-large"><img src="https://i.pravatar.cc/80?img=11" alt="Elena" /></div>
          <h4>Elena Park</h4>
          <div class="sub">🌍 São Paulo · 2,340 friends</div>
          <div style="margin: 8px 0; display: flex; justify-content: center; gap: 8px; font-size: 13px;">
            <span><i class="fas fa-scroll"></i> 126 scraps</span>
            <span><i class="fas fa-heart" style="color:#e74c3c;"></i> 89</span>
          </div>
        </div>
        <div style="margin-top: 8px; border-top: 1px solid var(--orkut-border); padding-top: 10px;">
          <div class="menu-item"><i class="fas fa-user-friends"></i> Friends</div>
          <div class="menu-item"><i class="fas fa-images"></i> Photos</div>
          <div class="menu-item"><i class="fas fa-scroll"></i> Scrapbook</div>
          <div class="menu-item"><i class="fas fa-users"></i> Communities</div>
        </div>
      </div>
    </aside>

    <!-- feed -->
    <main class="feed">
      <!-- composer -->
      <div class="composer">
        <div class="composer-top">
          <div class="avatar-small"><img src="https://i.pravatar.cc/40?img=11" /></div>
          <input type="text" placeholder="What's on your mind, Elena?" id="postInput" />
        </div>
        <div class="composer-actions">
          <button class="photo" id="photoTrigger"><i class="fas fa-image"></i> Photo</button>
          <button class="feel" id="feelTrigger"><i class="fas fa-smile"></i> Feeling</button>
          <button id="scrapTrigger"><i class="fas fa-scroll"></i> Scrap</button>
        </div>
      </div>

      <!-- feed container -->
      <div id="feedContainer"></div>
    </main>

    <!-- right sidebar: scraps & online -->
    <aside class="right-sidebar">
      <div class="chat-card" style="margin-bottom: 16px;">
        <h4>Online friends <i class="fas fa-circle" style="color:#2ecc71; font-size:12px;"></i></h4>
        <div class="friend-row"><div class="avatar-small"><img src="https://i.pravatar.cc/32?img=13" /></div><span class="friend-name">Olivia</span><span class="online-dot"></span></div>
        <div class="friend-row"><div class="avatar-small"><img src="https://i.pravatar.cc/32?img=15" /></div><span class="friend-name">Ethan</span><span class="online-dot"></span></div>
        <div class="friend-row"><div class="avatar-small"><img src="https://i.pravatar.cc/32?img=17" /></div><span class="friend-name">Lucas</span><span class="online-dot"></span></div>
        <div class="friend-row"><div class="avatar-small"><img src="https://i.pravatar.cc/32?img=19" /></div><span class="friend-name">Emma</span><span class="online-dot" style="background:#bdc3c7;"></span></div>
      </div>

      <div class="chat-card">
        <h4>Recent Scraps <i class="fas fa-scroll" style="color:var(--orkut-blue);"></i></h4>
        <div id="scrapFeed">
          <div class="scrap-item"><div><div class="scrap-text"><strong>David:</strong> Hey! Great to see you active 😊</div><div class="scrap-time">2h ago</div></div></div>
          <div class="scrap-item"><div><div class="scrap-text"><strong>Mia:</strong> Love your new profile pic!</div><div class="scrap-time">5h ago</div></div></div>
          <div class="scrap-item"><div><div class="scrap-text"><strong>Carlos:</strong> Are you coming to the meetup?</div><div class="scrap-time">1d ago</div></div></div>
        </div>
      </div>
    </aside>
  </div>

  <script>
    (function() {
      const feedContainer = document.getElementById('feedContainer');
      const postInput = document.getElementById('postInput');
      const scrapFeed = document.getElementById('scrapFeed');

      // ---------- initial posts ----------
      let posts = [
        {
          id: 1,
          user: 'David Chen',
          avatar: 'https://i.pravatar.cc/44?img=8',
          time: '2h ago',
          text: 'Just finished a 10k run! 🏃‍♂️ feeling great. Anyone else training for the marathon?',
          image: 'https://images.unsplash.com/photo-1534432588723-1b9d5e09e7d9?w=600&h=300&fit=crop',
          likes: 24,
          comments: 12,
          shares: 5
        },
        {
          id: 2,
          user: 'Mia Rodriguez',
          avatar: 'https://i.pravatar.cc/44?img=12',
          time: '5h ago',
          text: 'Sunset at the pier 🌅 grateful for this view.',
          image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=600&h=300&fit=crop',
          likes: 43,
          comments: 8,
          shares: 2
        }
      ];

      // ---------- scraps ----------
      let scraps = [
        { user: 'David', text: 'Hey! Great to see you active 😊', time: '2h ago' },
        { user: 'Mia', text: 'Love your new profile pic!', time: '5h ago' },
        { user: 'Carlos', text: 'Are you coming to the meetup?', time: '1d ago' }
      ];

      function escapeHtml(text) {
        const div = document.createElement('div');
        div.textContent = text;
        return div.innerHTML;
      }

      // render scrap feed
      function renderScraps() {
        scrapFeed.innerHTML = '';
        scraps.slice(0, 5).forEach(s => {
          const div = document.createElement('div');
          div.className = 'scrap-item';
          div.innerHTML = `<div><div class="scrap-text"><strong>${escapeHtml(s.user)}:</strong> ${escapeHtml(s.text)}</div><div class="scrap-time">${s.time}</div></div>`;
          scrapFeed.appendChild(div);
        });
      }

      // add scrap
      function addScrap(text) {
        if (!text.trim()) return;
        scraps.unshift({ user: 'Elena', text: text.trim(), time: 'Just now' });
        renderScraps();
      }

      // create post element
      function createPostElement(postData) {
        const postDiv = document.createElement('div');
        postDiv.className = 'post';
        postDiv.dataset.id = postData.id;
        let liked = false;
        let likeCount = postData.likes;

        postDiv.innerHTML = `
          <div class="post-header">
            <div class="avatar-small"><img src="${postData.avatar}" alt="${postData.user}" /></div>
            <div><div class="post-user">${postData.user}</div><div class="post-time">${postData.time}</div></div>
          </div>
          <div class="post-content"><p>${escapeHtml(postData.text)}</p></div>
          ${postData.image ? `<div class="post-image"><img src="${postData.image}" alt="post image" /></div>` : ''}
          <div class="post-stats">
            <span class="like-stats">❤️ ${likeCount}</span>
            <span>${postData.comments} comments · ${postData.shares} shares</span>
          </div>
          <div class="post-actions">
            <button class="like-btn"><i class="far fa-thumbs-up"></i> Like</button>
            <button><i class="far fa-comment"></i> Comment</button>
            <button><i class="fas fa-share"></i> Share</button>
          </div>
        `;

        const likeBtn = postDiv.querySelector('.like-btn');
        const likeStats = postDiv.querySelector('.like-stats');
        likeBtn.addEventListener('click', function(e) {
          e.preventDefault();
          liked = !liked;
          if (liked) {
            likeCount += 1;
            this.classList.add('liked');
            this.querySelector('i').className = 'fas fa-thumbs-up';
            this.style.color = '#3b7dd8';
          } else {
            likeCount -= 1;
            this.classList.remove('liked');
            this.querySelector('i').className = 'far fa-thumbs-up';
            this.style.color = '';
          }
          likeStats.textContent = `❤️ ${likeCount}`;
          postData.likes = likeCount;
        });

        return postDiv;
      }

      function renderFeed() {
        feedContainer.innerHTML = '';
        const sorted = [...posts].sort((a, b) => b.id - a.id);
        sorted.forEach(p => {
          feedContainer.appendChild(createPostElement(p));
        });
      }

      function addNewPost(text, imageUrl = null) {
        if (!text.trim()) return;
        const newPost = {
          id: Date.now(),
          user: 'Elena Park',
          avatar: 'https://i.pravatar.cc/44?img=11',
          time: 'Just now',
          text: text.trim(),
          image: imageUrl || null,
          likes: 0,
          comments: 0,
          shares: 0
        };
        posts.push(newPost);
        renderFeed();
        feedContainer.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }

      // ----- init -----
      renderFeed();
      renderScraps();

      // ----- composer: Enter -----
      postInput.addEventListener('keydown', function(e) {
        if (e.key === 'Enter' && !e.shiftKey) {
          e.preventDefault();
          addNewPost(this.value);
          this.value = '';
        }
      });

      // ----- photo button -----
      document.getElementById('photoTrigger').addEventListener('click', function() {
        addNewPost('📸 Check out this awesome photo!', 'https://images.unsplash.com/photo-1518837695005-2083093ee35b?w=600&h=300&fit=crop');
      });

      // ----- feeling button -----
      document.getElementById('feelTrigger').addEventListener('click', function() {
        const feels = ['😊 Feeling happy!', '😎 Feeling cool', '🤔 Thinking about life', '🔥 On fire today'];
        addNewPost(feels[Math.floor(Math.random() * feels.length)]);
      });

      // ----- scrap button -----
      document.getElementById('scrapTrigger').addEventListener('click', function() {
        const msg = prompt('Write a scrap to your friend:');
        if (msg && msg.trim()) {
          addScrap(msg.trim());
          // also show as a post
          addNewPost('📜 Scrap: ' + msg.trim());
        }
      });

      // ----- header nav toggle -----
      document.querySelectorAll('.header-nav a').forEach(link => {
        link.addEventListener('click', function(e) {
          e.preventDefault();
          document.querySelectorAll('.header-nav a').forEach(l => l.classList.remove('active'));
          this.classList.add('active');
        });
      });

      // ----- search demo -----
      document.getElementById('globalSearch').addEventListener('keydown', function(e) {
        if (e.key === 'Enter') alert('🔍 Searching for: "' + this.value + '" (demo)');
      });

      // ----- menu items demo -----
      document.querySelectorAll('.menu-item, .friend-row, .profile-card').forEach(el => {
        el.addEventListener('click', function() {
          const txt = this.textContent.trim().slice(0, 30);
          alert('Navigate to: ' + txt);
        });
      });

      // ----- scrap item click (demo) -----
      document.querySelectorAll('.scrap-item').forEach(el => {
        el.addEventListener('click', function() {
          alert('📜 View scrap detail (demo)');
        });
      });

    })();
  </script>
</body>
</html>
