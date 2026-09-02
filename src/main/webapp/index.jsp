<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>SocialConnect · Interactive Feed</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Inter', system-ui, sans-serif; }
    :root {
      --fb-blue: #1877f2;
      --fb-dark: #1b1f23;
      --fb-bg: #f0f2f5;
      --fb-card: #ffffff;
      --fb-border: #ced0d4;
      --fb-text: #050505;
      --fb-muted: #65676b;
      --fb-shadow: 0 2px 12px rgba(0, 0, 0, 0.08);
      --radius-lg: 16px;
      --radius-sm: 8px;
    }
    body { background: var(--fb-bg); color: var(--fb-text); line-height: 1.34; padding-top: 60px; }
    .header {
      position: fixed; top: 0; left: 0; width: 100%; z-index: 100;
      background: var(--fb-card); border-bottom: 1px solid var(--fb-border);
      padding: 8px 16px; display: flex; align-items: center; justify-content: space-between;
      height: 60px; box-shadow: 0 1px 4px rgba(0,0,0,0.04);
    }
    .header-left { display: flex; align-items: center; gap: 8px; }
    .logo { font-size: 28px; font-weight: 700; color: var(--fb-blue); letter-spacing: -0.5px; }
    .logo i { font-size: 30px; margin-right: 2px; }
    .search-bar {
      background: var(--fb-bg); border-radius: 50px; padding: 6px 16px;
      display: flex; align-items: center; gap: 8px; min-width: 240px;
      border: 1px solid transparent; transition: 0.2s;
    }
    .search-bar:focus-within { background: white; border-color: var(--fb-blue); box-shadow: 0 0 0 2px rgba(24,119,242,0.2); }
    .search-bar input { border: none; background: transparent; outline: none; font-size: 14px; width: 100%; }
    .search-bar i { color: var(--fb-muted); }
    .header-nav { display: flex; align-items: center; gap: 6px; }
    .header-nav a {
      display: inline-flex; align-items: center; justify-content: center;
      width: 44px; height: 44px; border-radius: 50%; color: var(--fb-dark);
      font-size: 20px; transition: background 0.15s;
    }
    .header-nav a:hover { background: var(--fb-bg); }
    .header-nav a.active { color: var(--fb-blue); border-bottom: 3px solid var(--fb-blue); border-radius: 0; width: auto; padding: 0 18px; height: 100%; background: transparent; }
    .header-right { display: flex; align-items: center; gap: 8px; }
    .avatar-small {
      width: 36px; height: 36px; border-radius: 50%; background: #ccd0d5;
      display: inline-flex; align-items: center; justify-content: center;
      font-weight: 600; color: #1b1f23; overflow: hidden;
    }
    .avatar-small img { width: 100%; height: 100%; object-fit: cover; }
    .icon-btn {
      width: 40px; height: 40px; border-radius: 50%; border: none;
      background: var(--fb-bg); color: var(--fb-dark); font-size: 18px;
      cursor: pointer; transition: 0.15s; display: inline-flex; align-items: center; justify-content: center;
    }
    .icon-btn:hover { background: #e4e6eb; }
    .container {
      max-width: 1200px; margin: 0 auto; padding: 0 16px;
      display: grid; grid-template-columns: 280px 1fr 320px; gap: 24px; margin-top: 20px;
    }
    .left-sidebar { position: sticky; top: 80px; align-self: start; }
    .sidebar-card {
      background: var(--fb-card); border-radius: var(--radius-lg);
      padding: 16px 12px; box-shadow: var(--fb-shadow);
    }
    .sidebar-card .user-row {
      display: flex; align-items: center; gap: 12px; padding: 8px 0;
      border-radius: var(--radius-sm); cursor: pointer; transition: 0.1s;
    }
    .sidebar-card .user-row:hover { background: var(--fb-bg); }
    .sidebar-card .user-row i { width: 28px; color: var(--fb-blue); font-size: 18px; text-align: center; }
    .sidebar-divider { height: 1px; background: var(--fb-border); margin: 10px 0; }
    .shortcut {
      display: flex; align-items: center; gap: 12px; padding: 8px 0;
      border-radius: var(--radius-sm); cursor: pointer; transition: 0.1s;
    }
    .shortcut:hover { background: var(--fb-bg); }
    .shortcut .round {
      width: 36px; height: 36px; background: var(--fb-bg);
      border-radius: var(--radius-sm); display: flex; align-items: center;
      justify-content: center; color: var(--fb-blue);
    }
    .feed { display: flex; flex-direction: column; gap: 20px; }
    .stories {
      background: var(--fb-card); border-radius: var(--radius-lg);
      padding: 12px 8px; box-shadow: var(--fb-shadow);
      display: flex; gap: 12px; overflow-x: auto; scrollbar-width: thin;
    }
    .story {
      flex: 0 0 100px; text-align: center; cursor: pointer; transition: 0.15s;
    }
    .story:hover { transform: scale(1.02); }
    .story .story-avatar {
      width: 80px; height: 80px; border-radius: 50%; margin: 0 auto 4px;
      border: 3px solid var(--fb-blue); overflow: hidden; background: #ccd0d5;
      display: flex; align-items: center; justify-content: center; font-size: 32px; color: white;
    }
    .story .story-avatar img { width: 100%; height: 100%; object-fit: cover; }
    .story .story-name { font-size: 12px; font-weight: 500; color: var(--fb-text); white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
    .composer {
      background: var(--fb-card); border-radius: var(--radius-lg);
      padding: 16px; box-shadow: var(--fb-shadow);
    }
    .composer-top { display: flex; gap: 12px; align-items: center; }
    .composer-top .avatar-small { width: 40px; height: 40px; flex-shrink: 0; }
    .composer-top input {
      flex: 1; border: none; background: var(--fb-bg); padding: 12px 16px;
      border-radius: 50px; font-size: 14px; outline: none; transition: 0.1s;
    }
    .composer-top input:focus { background: white; border: 1px solid var(--fb-blue); }
    .composer-actions {
      display: flex; justify-content: space-around; margin-top: 12px;
      border-top: 1px solid var(--fb-border); padding-top: 12px;
    }
    .composer-actions button {
      background: none; border: none; display: flex; align-items: center;
      gap: 6px; font-weight: 500; color: var(--fb-muted); padding: 6px 14px;
      border-radius: var(--radius-sm); cursor: pointer; transition: 0.1s; font-size: 14px;
    }
    .composer-actions button:hover { background: var(--fb-bg); }
    .composer-actions button i { font-size: 18px; }
    .composer-actions .live { color: #f3425f; }
    .composer-actions .photo { color: #45bd62; }
    .composer-actions .feel { color: #f7b928; }
    .post {
      background: var(--fb-card); border-radius: var(--radius-lg);
      box-shadow: var(--fb-shadow); padding: 16px;
      transition: opacity 0.2s;
    }
    .post-header { display: flex; gap: 12px; align-items: center; }
    .post-header .avatar-small { width: 44px; height: 44px; }
    .post-header .post-user { font-weight: 600; }
    .post-header .post-time { font-size: 13px; color: var(--fb-muted); }
    .post-content { margin: 12px 0 10px; }
    .post-content p { font-size: 15px; line-height: 1.5; }
    .post-image { margin: 10px 0; border-radius: var(--radius-sm); overflow: hidden; background: #e4e6eb; }
    .post-image img { width: 100%; max-height: 480px; object-fit: cover; display: block; }
    .post-stats {
      display: flex; justify-content: space-between; color: var(--fb-muted);
      font-size: 14px; border-bottom: 1px solid var(--fb-border);
      padding-bottom: 8px; margin-bottom: 8px;
    }
    .post-actions { display: flex; justify-content: space-around; }
    .post-actions button {
      background: none; border: none; display: flex; align-items: center;
      gap: 6px; padding: 6px 20px; border-radius: var(--radius-sm);
      font-weight: 500; color: var(--fb-muted); cursor: pointer;
      transition: 0.1s; font-size: 14px;
    }
    .post-actions button:hover { background: var(--fb-bg); }
    .post-actions button.liked { color: var(--fb-blue); }
    .post-actions button i { font-size: 18px; }
    .right-sidebar { position: sticky; top: 80px; align-self: start; }
    .chat-card {
      background: var(--fb-card); border-radius: var(--radius-lg);
      padding: 16px; box-shadow: var(--fb-shadow);
    }
    .chat-card h4 { font-weight: 600; margin-bottom: 12px; display: flex; justify-content: space-between; }
    .chat-card h4 i { color: var(--fb-muted); }
    .friend-row {
      display: flex; align-items: center; gap: 10px; padding: 8px 0;
      border-radius: var(--radius-sm); cursor: pointer; transition: 0.1s;
    }
    .friend-row:hover { background: var(--fb-bg); }
    .friend-row .avatar-small { width: 36px; height: 36px; }
    .friend-row .friend-name { font-weight: 500; font-size: 14px; }
    .friend-row .online-dot {
      width: 10px; height: 10px; background: #31a24c; border-radius: 50%;
      display: inline-block; margin-left: auto; border: 2px solid white;
    }
    .text-muted { color: var(--fb-muted); }
    @media (max-width: 1024px) {
      .container { grid-template-columns: 1fr; max-width: 680px; }
      .left-sidebar, .right-sidebar { display: none; }
      .header-nav a.active { padding: 0 10px; }
      .search-bar { min-width: 140px; }
    }
    @media (max-width: 600px) {
      .header { padding: 4px 8px; }
      .search-bar { min-width: 100px; padding: 4px 10px; }
      .search-bar input { width: 70px; }
      .logo { font-size: 22px; }
      .header-nav a { width: 36px; height: 36px; font-size: 16px; }
      .header-nav a.active { padding: 0 6px; }
    }
  </style>
</head>
<body>
  <!-- HEADER -->
  <header class="header">
    <div class="header-left">
      <div class="logo"><i class="fab fa-facebook"></i>Social</div>
      <div class="search-bar">
        <i class="fas fa-search"></i>
        <input type="text" placeholder="Search SocialConnect" id="globalSearch" />
      </div>
    </div>
    <div class="header-nav" id="headerNav">
      <a href="#" class="active"><i class="fas fa-home"></i></a>
      <a href="#"><i class="fas fa-users"></i></a>
      <a href="#"><i class="fas fa-tv"></i></a>
      <a href="#"><i class="fas fa-store"></i></a>
      <a href="#"><i class="fas fa-bell"></i></a>
    </div>
    <div class="header-right">
      <div class="avatar-small" style="background:#c1c9d6;">
        <img src="https://i.pravatar.cc/40?img=11" alt="user" />
      </div>
      <button class="icon-btn"><i class="fas fa-ellipsis-h"></i></button>
    </div>
  </header>

  <!-- MAIN -->
  <div class="container">
    <!-- left sidebar -->
    <aside class="left-sidebar">
      <div class="sidebar-card">
        <div class="user-row">
          <div class="avatar-small"><img src="https://i.pravatar.cc/40?img=11" alt="user" /></div>
          <span style="font-weight:600;">Elena Park</span>
        </div>
        <div class="sidebar-divider"></div>
        <div class="user-row"><i class="fas fa-user-friends"></i> Friends</div>
        <div class="user-row"><i class="fas fa-clock"></i> Memories</div>
        <div class="user-row"><i class="fas fa-flag"></i> Pages</div>
        <div class="user-row"><i class="fas fa-calendar-alt"></i> Events</div>
        <div class="sidebar-divider"></div>
        <div style="font-weight:600; margin-bottom:6px;">Shortcuts</div>
        <div class="shortcut"><span class="round"><i class="fas fa-users"></i></span> Groups</div>
        <div class="shortcut"><span class="round"><i class="fas fa-video"></i></span> Watch</div>
        <div class="shortcut"><span class="round"><i class="fas fa-gamepad"></i></span> Gaming</div>
      </div>
    </aside>

    <!-- feed -->
    <main class="feed">
      <!-- stories -->
      <div class="stories">
        <div class="story"><div class="story-avatar" style="background: linear-gradient(145deg, #1877f2, #0a5bb5);"><i class="fas fa-plus" style="font-size:24px;"></i></div><div class="story-name">Create story</div></div>
        <div class="story"><div class="story-avatar"><img src="https://i.pravatar.cc/80?img=1" /></div><div class="story-name">Aisha</div></div>
        <div class="story"><div class="story-avatar"><img src="https://i.pravatar.cc/80?img=3" /></div><div class="story-name">Marcus</div></div>
        <div class="story"><div class="story-avatar"><img src="https://i.pravatar.cc/80?img=5" /></div><div class="story-name">Sophie</div></div>
        <div class="story"><div class="story-avatar"><img src="https://i.pravatar.cc/80?img=7" /></div><div class="story-name">James</div></div>
        <div class="story"><div class="story-avatar"><img src="https://i.pravatar.cc/80?img=9" /></div><div class="story-name">Liam</div></div>
      </div>

      <!-- composer -->
      <div class="composer">
        <div class="composer-top">
          <div class="avatar-small"><img src="https://i.pravatar.cc/40?img=11" /></div>
          <input type="text" placeholder="What's on your mind, Elena?" id="postInput" />
        </div>
        <div class="composer-actions">
          <button class="live"><i class="fas fa-video"></i> Live video</button>
          <button class="photo" id="photoTrigger"><i class="fas fa-images"></i> Photo/Video</button>
          <button class="feel"><i class="fas fa-smile"></i> Feeling</button>
        </div>
      </div>

      <!-- feed container -->
      <div id="feedContainer">
        <!-- static posts will be injected by JS -->
      </div>
    </main>

    <!-- right sidebar -->
    <aside class="right-sidebar">
      <div class="chat-card">
        <h4>Contacts <i class="fas fa-search" style="font-size:14px;"></i></h4>
        <div class="friend-row"><div class="avatar-small"><img src="https://i.pravatar.cc/36?img=13" /></div><span class="friend-name">Olivia</span><span class="online-dot"></span></div>
        <div class="friend-row"><div class="avatar-small"><img src="https://i.pravatar.cc/36?img=15" /></div><span class="friend-name">Ethan</span><span class="online-dot"></span></div>
        <div class="friend-row"><div class="avatar-small"><img src="https://i.pravatar.cc/36?img=17" /></div><span class="friend-name">Lucas</span><span class="online-dot"></span></div>
        <div class="friend-row"><div class="avatar-small"><img src="https://i.pravatar.cc/36?img=19" /></div><span class="friend-name">Emma</span><span class="online-dot" style="background:#ccc;"></span></div>
        <div class="friend-row"><div class="avatar-small"><img src="https://i.pravatar.cc/36?img=21" /></div><span class="friend-name">Noah</span><span class="online-dot" style="background:#ccc;"></span></div>
        <div style="margin-top:12px; border-top:1px solid var(--fb-border); padding-top:10px;">
          <div class="friend-row"><i class="fas fa-users" style="width:28px;color:var(--fb-blue);"></i><span style="font-weight:500;">Group chats</span></div>
          <div class="friend-row"><i class="fas fa-message" style="width:28px;color:var(--fb-blue);"></i><span style="font-weight:500;">Messages</span></div>
        </div>
      </div>
    </aside>
  </div>

  <script>
    (function() {
      // ---------- data ----------
      const feedContainer = document.getElementById('feedContainer');
      const postInput = document.getElementById('postInput');

      // initial posts
      const initialPosts = [
        {
          id: 1,
          user: 'David Chen',
          avatar: 'https://i.pravatar.cc/44?img=8',
          time: '2h ago · 🌍',
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
          time: '5h ago · 📷',
          text: 'Sunset at the pier 🌅 grateful for this view.',
          image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=600&h=300&fit=crop',
          likes: 43,
          comments: 8,
          shares: 2
        }
      ];

      // state: store all posts (latest first)
      let posts = [];

      // helper: escape
      function escapeHtml(text) {
        const div = document.createElement('div');
        div.textContent = text;
        return div.innerHTML;
      }

      // render a single post element from data
      function createPostElement(postData) {
        const postDiv = document.createElement('div');
        postDiv.className = 'post';
        postDiv.dataset.id = postData.id;
        // like state per post
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

        // ----- like logic (self-contained) -----
        const likeBtn = postDiv.querySelector('.like-btn');
        const likeStats = postDiv.querySelector('.like-stats');
        likeBtn.addEventListener('click', function(e) {
          e.preventDefault();
          liked = !liked;
          if (liked) {
            likeCount += 1;
            this.classList.add('liked');
            this.querySelector('i').className = 'fas fa-thumbs-up';
            this.style.color = '#1877f2';
          } else {
            likeCount -= 1;
            this.classList.remove('liked');
            this.querySelector('i').className = 'far fa-thumbs-up';
            this.style.color = '';
          }
          likeStats.textContent = `❤️ ${likeCount}`;
          // update stored data (optional)
          postData.likes = likeCount;
        });

        return postDiv;
      }

      // render all posts (latest first)
      function renderFeed() {
        feedContainer.innerHTML = '';
        // sort by id descending (newest first)
        const sorted = [...posts].sort((a, b) => b.id - a.id);
        sorted.forEach(p => {
          const el = createPostElement(p);
          feedContainer.appendChild(el);
        });
      }

      // add new post
      function addNewPost(text, imageUrl = null) {
        if (!text.trim()) return;
        const newPost = {
          id: Date.now(),
          user: 'Elena Park',
          avatar: 'https://i.pravatar.cc/44?img=11',
          time: 'Just now · 🌐',
          text: text.trim(),
          image: imageUrl || null,
          likes: 0,
          comments: 0,
          shares: 0
        };
        posts.push(newPost);
        renderFeed();
        // scroll to top of feed
        feedContainer.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }

      // ----- init with initial posts -----
      posts = [...initialPosts];
      renderFeed();

      // ----- composer: Enter key -----
      postInput.addEventListener('keydown', function(e) {
        if (e.key === 'Enter' && !e.shiftKey) {
          e.preventDefault();
          addNewPost(this.value);
          this.value = '';
        }
      });

      // ----- photo button: add demo image post -----
      document.getElementById('photoTrigger').addEventListener('click', function() {
        const dummyText = "📸 Check out this awesome photo!";
        const dummyImage = 'https://images.unsplash.com/photo-1518837695005-2083093ee35b?w=600&h=300&fit=crop';
        addNewPost(dummyText, dummyImage);
      });

      // ----- feel button: add a feeling post -----
      document.querySelector('.composer-actions .feel')?.addEventListener('click', function() {
        const feelings = ['😊 Feeling happy!', '😎 Feeling cool', '🤔 Thinking about life', '🔥 On fire today'];
        const rand = feelings[Math.floor(Math.random() * feelings.length)];
        addNewPost(rand);
      });

      // ----- live video button: demo -----
      document.querySelector('.composer-actions .live')?.addEventListener('click', function() {
        addNewPost('🔴 Going live now! Join me 🎥');
      });

      // ----- story click demo -----
      document.querySelectorAll('.story').forEach(s => {
        s.addEventListener('click', () => alert('📸 Story view (demo)'));
      });

      // ----- header nav active toggle -----
      document.querySelectorAll('.header-nav a').forEach(link => {
        link.addEventListener('click', function(e) {
          e.preventDefault();
          document.querySelectorAll('.header-nav a').forEach(l => l.classList.remove('active'));
          this.classList.add('active');
        });
      });

      // ----- search demo -----
      document.getElementById('globalSearch')?.addEventListener('keydown', function(e) {
        if (e.key === 'Enter') {
          alert('🔍 Searching for: "' + this.value + '" (demo)');
        }
      });

      // ----- sidebar shortcuts (demo) -----
      document.querySelectorAll('.shortcut, .user-row').forEach(el => {
        el.addEventListener('click', function() {
          const txt = this.textContent.trim().slice(0, 30);
          alert('Navigate to: ' + txt);
        });
      });

    })();
  </script>
</body>
</html>
