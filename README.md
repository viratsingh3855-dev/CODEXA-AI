# CODEXA – AI-POWERED CODING LEARNING PLATFORM

> **"Learn Beyond Syntax. Think Like a Programmer."**  
> *Motto: "Learn. Practice. Debug. Earn. Level Up."*  
> **Event:** Graviton Hackathon 2026 • CGC University, Mohali  
> **Platform Version:** 2.0 (Full-Stack AI Production Edition)

---

## 🌐 Cloud Deployment (Vercel & Render)
Want to publish CODEXA online so anyone can visit it with a public URL?
👉 **See the complete step-by-step guide in [DEPLOY_GUIDE.md](DEPLOY_GUIDE.md)**!
* **Frontend:** One-click deployment to **Vercel** (`https://codexa-platform.vercel.app`)
* **Backend:** Zero-config container deployment to **Render** (`https://codexa-backend.onrender.com`)

---

## ⚡ 1. Quick Start Guide (Windows)

You have **two super easy ways** to run CODEXA:

### 🌟 Option 1: One-Click Full-Stack Launcher (Recommended)
Simply double-click the **`START_CODEXA.bat`** file in the root folder.
* Automatically launches the **Node.js Express Backend API** on `http://localhost:5000`
* Automatically checks dependencies and starts the **Vite React Frontend** on `http://localhost:5173`
* Opens your default web browser automatically!

### 💻 Option 2: Manual Terminal Commands
Open two terminal windows:

#### Terminal 1 — Backend API:
```bash
cd server
npm install
npm start
```
* Backend API: `http://localhost:5000`
* Health Check: `http://localhost:5000/api/health`

#### Terminal 2 — Frontend Application:
```bash
npm install
npm run dev
```
* Web Application: `http://localhost:5173`

---

## 🤖 2. Universal AI Integration (Any Provider, Any Model, Free or Paid!)

CODEXA features a **Universal AI Engine** that works with **ANY** API key and AI model. You are not locked into OpenAI — you can use free models from Google Gemini or Groq, unified models from OpenRouter, inexpensive models from DeepSeek, or offline models from Ollama!

### 🌟 Method A: In-App AI Settings Modal (Easiest - No Terminal Required!)
1. Open CODEXA at `http://localhost:5173/`
2. Navigate to **AI Teacher** (`/ai-teacher`), **AI Debug** (`/debug`), or click **AI Settings** in the top navigation.
3. Select your provider:
   * **Google Gemini (100% Free Tier):** Uses `gemini-1.5-flash` or `gemini-2.0-flash`. [Get Free Key](https://aistudio.google.com/app/apikey)
   * **Groq Cloud (100% Free & Ultra-Fast):** Uses `llama-3.3-70b-versatile` or `llama-3.1-8b`. [Get Free Key](https://console.groq.com/keys)
   * **OpenRouter (100+ Free & Paid Models):** Uses `meta-llama/llama-3.2-3b-instruct:free`, `claude-3.5-sonnet`, `mistral`, etc. [Get Free Key](https://openrouter.ai/keys)
   * **OpenAI:** Uses `gpt-4o-mini` or `gpt-4o`. [Get Key](https://platform.openai.com/api-keys)
   * **DeepSeek:** Uses `deepseek-chat` or `deepseek-reasoner`. [Get Key](https://platform.deepseek.com)
   * **Ollama (100% Free Offline):** Run models locally on your computer with 0 API key!
   * **Custom Provider:** Any OpenAI-compatible endpoint, proxy, or self-hosted gateway.
4. Paste your API key, select or type any model name, and click **"Test Connection"** to verify latency.
5. Click **"Save & Apply"** — immediately active across the entire platform without restarting!

### 💻 Method B: In `server/.env` File
You can also configure your provider directly in `server/.env`:
```env
# Universal configuration
AI_PROVIDER=gemini
AI_API_KEY=your_key_here
AI_MODEL=gemini-1.5-flash

# Or provider-specific keys:
GEMINI_API_KEY=your_gemini_key
GROQ_API_KEY=your_groq_key
OPENROUTER_API_KEY=your_openrouter_key
OPENAI_API_KEY=your_openai_key
```

---

## 🔒 3. Multi-User Authentication System

CODEXA features a full **Multi-User Authentication Architecture**:
* **Registration (`/register`):** Any student can sign up with their Full Name, Email, and Password.
* **Security:** Passwords are cryptographically salted and hashed using **Bcrypt** (10 salt rounds).
* **JWT Tokens:** Stateless authentication tokens issued with 7-day expiration and verified via Express middleware.
* **Student Profile (`/profile`):** Edit name, bio, campus, and view individual XP stats.
* **Dynamic Navigation:** When signed in, the top navigation displays the student's name, avatar, level, streak, and XP. When signed out, "Log In" and "Sign Up" buttons appear.

---

## 🛠️ 4. Core Platform Functionalities

### 1. 🤖 AI Teacher (`/ai-teacher`)
* **Intelligent Coding Tutor:** Powered by OpenAI GPT-4o-mini with custom system prompts acting as a friendly, patient mentor.
* **Persistent Chat History:** Sidebar displays previous conversations with Search, Rename, and Delete support.
* **Context-Aware Follow-ups:** Understands conversational context and pronouns ("What if I change its value?").
* **Language Modes:** Toggle between **English**, **Hinglish (Hindi + English)**, and **Detailed English**.

### 2. ⚡ Coding Playground (`/playground`)
* **Multi-Language Support:** Python, JavaScript, HTML, CSS.
* **Isolated Sandbox Execution:** Real Python 3.x and Node.js code execution with 4-second timeout protection and memory limits.
* **Live Web Preview:** Instant sandboxed iframe rendering for HTML & CSS.
* **Session Persistence:** Save code snippets to your personal library or send code directly to the AI Debugger with one click.

### 3. 🐞 AI Debugger (`/debug`)
* **Real Error Runner:** Automatically runs your code in the isolated runner to capture syntax errors, index errors, type errors, or runtime exceptions.
* **Structured 6-Point Diagnosis:**
  1. What went wrong (Plain English)
  2. Why the error happened (Root cause)
  3. Where it occurred (Line number & token)
  4. How to fix it (Clear instructions)
  5. Corrected Code Block (Ready to copy)
  6. Learning Tip (Best practice advice)
* **Hinglish Explanation Option:** Explains complex errors in simple everyday Hinglish!

### 4. 🔍 Search Any Symbol (`/symbols`)
* **Syntax Decoded:** Search any symbol or keyword (`.`, `()`, `{}`, `[]`, `:`, `;`, `==`, `===`, `!`, `&&`, `||`, `%`, `**`, `.upper()`, `print()`, `len()`, `return`, `if`, `else`, `for`, `while`).
* **Complete Breakdown:** Explains What it is, Why we use it, Real code example, Expected output, and Hinglish analogy.
* **Test in Playground:** Send any symbol example straight to the Coding Playground.

### 5. 📚 Programming Courses (`/learn/courses`)
* **4 Full Tracks:** Python, HTML, CSS, JavaScript.
* **3 Progressive Tiers:** Beginner, Intermediate, Advanced.
* **Interactive Lessons (`/learn/lesson/:id`):** Theory, deep-dive AI insights, live code execution sandbox, and automated XP awards (+20 XP).

### 6. 🏆 Practice Quizzes & Gamification (`/practice` & `/gamification`)
* **Interactive Quizzes:** Language filters (Python, HTML, CSS, JS) and difficulty levels (Easy, Medium, Hard).
* **Instant Evaluation:** Progress timer, answer validation, detailed explanations, and accuracy calculation.
* **XP Engine:** +20 XP (Lesson), +10 XP (Quiz answer), +50 XP (Perfect quiz bonus), +30 XP (Daily challenge).
* **5-Tier Rank System:** Level 1 (Beginner Coder) to Level 5 (Coding Master).
* **6 Achievement Badges:** First Step, Quiz Master, Code Explorer, Consistent Learner, Debugging Hero, Fast Learner.
* **Live Leaderboard (`/leaderboard`):** Dynamic student rankings with college filter.

---

## 🗄️ 5. Database Architecture (PostgreSQL & Dual Engine)

CODEXA provides **dual database support**:
1. **Zero-Config Persistent Engine (Default):** Ready immediately upon download without requiring a running PostgreSQL server. Data is persisted to `server/data/codexa_store.json`.
2. **PostgreSQL via Prisma ORM (Production Ready):**
   * Schema located at `server/prisma/schema.prisma`
   * Models: `User`, `Profile`, `Conversation`, `Message`, `CodingSession`, `LearningProgress`, `UserPreferences`
   * To connect to your PostgreSQL database (e.g., Supabase, Neon, Railway, or local Postgres):
     ```bash
     # In server/.env:
     DATABASE_URL="postgresql://user:password@localhost:5432/codexa_db?schema=public"
     
     # Apply schema:
     cd server
     npx prisma db push
     ```

---

## 📁 6. Project Structure

```
CODEXA/
├── dist/                              # Pre-built production frontend (Zero-install ready)
├── server/                            # Node.js + Express Backend API
│   ├── prisma/
│   │   └── schema.prisma              # PostgreSQL Prisma schema definition
│   ├── src/
│   │   ├── config/                    # Environment, OpenAI SDK & Database configuration
│   │   ├── controllers/               # Auth, AI, Conversation, Code, Debug, Symbol, Progress
│   │   ├── middleware/                # JWT Auth, Ownership, Rate Limiter, Error Handler
│   │   ├── routes/                    # Express REST endpoints
│   │   ├── services/                  # AI Prompts, Isolated Sandbox Runner, Debugger, Symbols
│   │   ├── app.js                     # Express app setup (CORS, Rate Limiting, JSON parser)
│   │   └── server.js                  # HTTP Server listener
│   ├── .env                           # Backend environment variables (OPENAI_API_KEY, JWT_SECRET)
│   └── package.json                   # Backend dependencies
├── src/                               # React + Vite Frontend
│   ├── components/                    # Navbar, Footer, Toast notifications, Modals
│   ├── context/
│   │   ├── AuthContext.jsx            # Multi-user authentication provider
│   │   └── CodexaContext.jsx          # Gamification state & backend progress synchronization
│   ├── data/                          # Courses, quizzes, badges, and levels data
│   ├── pages/
│   │   ├── AiTeacherPage.jsx          # AI Chatbot with persistent history
│   │   ├── PlaygroundPage.jsx         # Monaco-style sandbox & live web preview
│   │   ├── DebugPage.jsx              # AI Error explanation & fixer
│   │   ├── SymbolSearchPage.jsx       # Interactive syntax symbol engine
│   │   ├── LoginPage.jsx              # Student login
│   │   ├── RegisterPage.jsx           # Student registration
│   │   ├── ProfilePage.jsx            # Student profile & stats
│   │   ├── LearningDashboard.jsx      # Overview dashboard
│   │   ├── CoursesList.jsx            # Course catalog
│   │   ├── LessonPage.jsx             # Course lesson with live sandbox execution
│   │   ├── PracticeQuizHub.jsx        # Quiz selection & filters
│   │   ├── QuizRunner.jsx             # Active quiz runner
│   │   ├── QuizResult.jsx             # Quiz scoring & XP rewards
│   │   ├── GamificationDashboard.jsx  # XP, badges, streaks, levels
│   │   └── LeaderboardPage.jsx        # Dynamic student rankings
│   ├── services/
│   │   └── api.js                     # Centralized Axios client with JWT interceptor
│   ├── App.jsx                        # Route table
│   └── main.jsx                       # Application entry point
├── START_CODEXA.bat                   # 🌟 One-Click Full-Stack Launcher (Windows)
├── run-fullstack.bat                  # Alternate full-stack batch launcher
├── package.json                       # Frontend dependencies
├── tailwind.config.js                 # CODEXA Cyberpunk EdTech Theme
└── README.md                          # Documentation
```

---

## 🎓 Graviton Hackathon 2026 Presentation Highlights

* **Real AI Integration:** True OpenAI GPT API integration with custom system prompts, contextual memory, and Hinglish capability.
* **Isolated Code Sandbox:** Real Python and Node.js execution with 4-second timeout protection and memory limits.
* **True Multi-User Security:** Stateless JWT tokens, Bcrypt hashed passwords, and individual student progress persistence.
* **Beginner-First UI/UX:** Futuristic dark EdTech glassmorphic styling built with React, Vite, Tailwind CSS, and Framer Motion.

---

*"Learn Beyond Syntax. Think Like a Programmer."*
