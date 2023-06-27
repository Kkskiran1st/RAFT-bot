if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Moviesbotz/Test-url-filter-bot.git /Test-url-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Test-url-filter-bot
fi
cd /Test-url-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
