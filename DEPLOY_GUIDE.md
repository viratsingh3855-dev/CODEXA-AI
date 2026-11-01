# 🚀 CODEXA – Full-Stack Deployment Guide (Vercel & Render)

> **"Learn Beyond Syntax. Think Like a Programmer."**  
> Complete, beginner-friendly instructions to deploy **CODEXA** live to the world in under 5 minutes.

---

## 🏗️ Architecture Overview

| Component | Platform | Role | Why This Setup? |
| :--- | :--- | :--- | :--- |
| **Frontend** | [Vercel](https://vercel.com) | React 18 + Vite SPA | Ultra-fast Global Edge CDN, SSL, zero-config Vite deployments |
| **Backend** | [Render](https://render.com) | Node.js + Express + Universal Gemini AI | Free persistent web service, runs secure isolated code runner sandbox |

---

## 📋 Prerequisites
1. A **GitHub Account**: [github.com](https://github.com)
2. A **Render Account**: [render.com](https://render.com) (Free tier)
3. A **Vercel Account**: [vercel.com](https://vercel.com) (Free tier)
4. A **Google Gemini API Key**: [aistudio.google.com/app/apikey](https://aistudio.google.com/app/apikey) (Free)

---

## 📦 STEP 1: Upload Project to GitHub

You have the complete project folder ready. Choose **Option A** or **Option B**:

### Option A: Using GitHub Website (No Git Terminal Required!)
1. Go to [github.com/new](https://github.com/new) and name your repository `codexa-platform`.
2. Keep it **Public** and click **Create repository**.
3. On the repository page, click **uploading an existing file**.
4. Drag and drop all files and folders from your `CODEXA` folder (do **not** include `node_modules`).
5. Click **Commit changes**.

### Option B: Using Git / GitHub Desktop
```bash
git init
git add .
git commit -m "feat: complete fullstack CODEXA platform with Gemini AI"
git branch -M main
git remote add origin https://github.com/<YOUR_USERNAME>/codexa-platform.git
git push -u origin main
```

---

## ⚡ STEP 2: Deploy Backend to Render

1. Log in to [dashboard.render.com](https://dashboard.render.com).
2. Click **New +** in the top navigation bar and select **Web Service**.
3. Select **Build and deploy from a Git repository** and connect your `codexa-platform` repository.
4. Fill in the following settings:
   - **Name**: `codexa-backend` (or your preferred name)
   - **Region**: Choose the closest region (e.g., Singapore, Frankfurt, Oregon)
   - **Branch**: `main`
   - **Root Directory**: `server` 👈 *(CRITICAL: Type `server` here)*
   - **Runtime**: `Node`
   - **Build Command**: `npm install`
   - **Start Command**: `node src/server.js`
   - **Instance Type**: `Free`
5. Scroll down to **Environment Variables** and add:

| Key | Value | Description |
| :--- | :--- | :--- |
| `NODE_ENV` | `production` | Production mode |
| `AI_PROVIDER` | `gemini` | Universal AI Engine provider |
| `GEMINI_API_KEY` | `YOUR_GEMINI_API_KEY` | Your Google Gemini API Key |
| `GEMINI_MODEL` | `gemini-3-flash-preview` | High-speed active model |
| `JWT_SECRET` | `codexa_super_secure_hackathon_secret_2026` | Random secret for JWT logins |
| `FRONTEND_URL` | `https://*.vercel.app` | Allowed CORS origin |

6. Click **Deploy Web Service**.
7. Wait 1-2 minutes until you see **Live**.
8. **Copy your Render Backend URL** at the top left of the dashboard:  
   👉 Example: `https://codexa-backend-xxxx.onrender.com`

---

## 🌐 STEP 3: Deploy Frontend to Vercel

1. Log in to [vercel.com/dashboard](https://vercel.com/dashboard).
2. Click **Add New...** ➜ **Project**.
3. Select your `codexa-platform` repository and click **Import**.
4. In the **Configure Project** screen:
   - **Framework Preset**: `Vite` (automatically detected)
   - **Root Directory**: `./` (leave default)
   - **Build Command**: `npm run build`
   - **Output Directory**: `dist`
5. Expand the **Environment Variables** section and add:

| Key | Value | Example |
| :--- | :--- | :--- |
| `VITE_API_URL` | `https://<YOUR_RENDER_URL>/api` | `https://codexa-backend-xxxx.onrender.com/api` |

*(⚠️ IMPORTANT: Make sure to include `/api` at the end of the URL!)*

6. Click **Deploy**.
7. In ~30 seconds, Vercel will give you your live URL!  
   👉 Example: `https://codexa-platform.vercel.app`

---

## ✅ STEP 4: Live Verification Checklist

Once both services are deployed, test your live platform:
- [ ] Open your Vercel URL in your browser.
- [ ] Go to **Register / Login** and create an account.
- [ ] Open the **AI Teacher** tab and ask: `"What is Python in simple Hinglish?"`
- [ ] Open the **Code Playground** and click **Run Code** on Python or JavaScript.
- [ ] Open the **AI Debugger** and test error explanations.
- [ ] Complete a **Practice Quiz** to verify XP, Streak, and Leaderboard updates!

---

## 💡 Troubleshooting & Notes
- **Render Free Tier Cold Starts**: On the free tier, Render sleeps after 15 minutes of inactivity. The first request after a sleep period may take 30-50 seconds to boot up. Subsequent requests are instant.
- **CORS Pre-Configured**: The backend's `server/src/app.js` is already pre-configured to automatically allow all `*.vercel.app` subdomains and localhost out of the box!
- **SPA 404 Routing**: The included `vercel.json` already contains rewrite rules so that reloading page routes like `/playground`, `/quiz`, or `/history` works seamlessly.
