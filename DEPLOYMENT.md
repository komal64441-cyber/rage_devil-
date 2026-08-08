# Rage Devil - Deployment Guide

## Quick Deploy Options

### Option 1: GitHub Pages (Free & Easiest)

1. **Create a GitHub Account** (if you don't have one): https://github.com/signup

2. **Fork or Create a New Repository**:
   - Click "New" on GitHub
   - Name it: `rage-devil`
   - Make it Public
   - Create repository

3. **Upload Files**:
   ```bash
   git clone https://github.com/YOUR-USERNAME/rage-devil.git
   cd rage-devil
   # Copy all project files here
   git add .
   git commit -m "Initial commit: Rage Devil game"
   git push origin main
   ```

4. **Enable GitHub Pages**:
   - Go to Settings → Pages
   - Set Source to "GitHub Actions"
   - It will auto-deploy!

5. **Your Game Link**:
   ```
   https://YOUR-USERNAME.github.io/rage-devil/
   ```

---

### Option 2: Netlify (Free & Simple)

1. **Visit**: https://netlify.com

2. **Sign up with GitHub**

3. **Create New Site**:
   - Connect GitHub → Select `rage-devil` repo
   - Build command: `npm run build`
   - Publish directory: `dist`
   - Click Deploy

4. **Your Game Link**:
   ```
   https://YOUR-SITE-NAME.netlify.app
   ```

---

### Option 3: Vercel (Free & Fast)

1. **Visit**: https://vercel.com

2. **Sign up with GitHub**

3. **Import Project**:
   - Select your `rage-devil` repo
   - Framework: Vite
   - Build command: `npm run build`
   - Output directory: `dist`
   - Click Deploy

4. **Your Game Link**:
   ```
   https://rage-devil.vercel.app
   ```

---

### Option 4: Simple Static Host (0$ Alternative)

**Using Surge.sh** (simplest):
```bash
npm install -g surge
npm run build
surge dist
```

Your game will be live instantly!

---

## Sharing Your Game

Once deployed, share your link with friends:

✅ **Direct Link**: `https://your-game-url.com`

✅ **With Troll Message**:
> "I beat all 34 levels. Try to beat my death count!"
> https://your-game-url.com

✅ **Using the In-Game Button**:
- Click "Copy Link to Troll Your Friends" on the main menu
- Paste in Discord/Twitter/etc

---

## Production Build

To test your production build locally:

```bash
npm run build
npm run preview
```

Then visit: `http://localhost:4173`

---

## Custom Domain (Optional)

If you have a domain, point it to:
- **GitHub Pages**: CNAME file
- **Netlify**: Domain settings
- **Vercel**: Project settings → Domains

---

## Troubleshooting

**Game doesn't load?**
- Clear browser cache
- Check console for errors (F12 → Console)
- Ensure dist/ folder was built

**Controls not working?**
- Try keyboard first (Arrow Keys)
- Mobile? Ensure touch controls appear at bottom

**Performance issues?**
- The game is optimized for modern browsers
- Try Chrome/Firefox/Safari

---

## One-Click Deploy Buttons

### GitHub Pages
1. Create repo on GitHub
2. Settings → Pages → Deploy from Actions
3. Done! ✅

### Netlify
[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start)

### Vercel
[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new)

---

## Support

If deployment fails:
- Check that `package.json` exists
- Ensure `npm install` runs without errors
- Verify `npm run build` creates `dist/index.html`
- Check GitHub Actions logs for errors

Enjoy your troll game! 🎮
