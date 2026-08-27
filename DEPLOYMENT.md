# ElizaOS Morgan Bot Deployment Guide

## Prerequisites
- GitHub repository with ElizaOS code
- Render or Railway account
- Telegram Bot Token
- Groq API Key

## Deployment Steps

### Option 1: Deploy to Render

1. **Push to GitHub**
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Morgan character bot"
   git remote add origin https://github.com/your-username/eliza-morgan-bot.git
   git push -u origin main
   ```

2. **Create Render Service**
   - Go to https://dashboard.render.com
   - Click "New +" → "Web Service"
   - Connect your GitHub repository
   - Select "Docker" as the runtime
   - Set build command: (empty for Docker)
   - Set start command: (empty for Docker)

3. **Environment Variables**
   Add these environment variables in Render:
   ```
   TELEGRAM_BOT_TOKEN=your_bot_token_here
   GROQ_API_KEY=your_groq_api_key_here
   TELEGRAM_ALLOWED_CHATS=["8982886801"]
   ```

4. **Deploy**
   - Click "Create Web Service"
   - Wait for deployment to complete

### Option 2: Deploy to Railway

1. **Push to GitHub** (same as above)

2. **Create Railway Project**
   - Go to https://railway.app
   - Click "New Project" → "Deploy from GitHub repo"
   - Select your repository
   - Railway will detect Dockerfile automatically

3. **Environment Variables**
   Add these in Railway:
   ```
   TELEGRAM_BOT_TOKEN=your_bot_token_here
   GROQ_API_KEY=your_groq_api_key_here
   TELEGRAM_ALLOWED_CHATS=["8982886801"]
   ```

4. **Deploy**
   - Click "Deploy"
   - Wait for deployment to complete

## Verification

After deployment, test the bot by:
1. Finding your bot on Telegram (@your_bot_username)
2. Sending a message from user ID 8982886801
3. Verifying Morgan responds

## Troubleshooting

- If bot doesn't respond, check logs in Render/Railway
- Ensure TELEGRAM_BOT_TOKEN is correct
- Ensure GROQ_API_KEY is valid
- Verify TELEGRAM_ALLOWED_CHATS includes your user ID

## Character Configuration

The Morgan character is configured in `characters/morgan.character.json` with:
- Exclusive access to user ID 8982886801
- Groq as the model provider
- Uncensored, affectionate personality
- Telegram client enabled
