if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TeamKazukai/luccy.git /Luccy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Luccy
fi
cd /Luccy
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py   
