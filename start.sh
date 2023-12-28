if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/FilmyFather/Yuvraj.git /ApnaTube
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Yuvraj
fi
cd /Yuvraj
pip3 install -U -r requirements.txt
echo "Starting Yuvraj...."
python3 bot.py
