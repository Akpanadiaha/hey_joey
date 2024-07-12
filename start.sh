if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Akpanadiaha/hey_joey.git /hey_joey
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /hey_joey
fi
cd /hey_joey
pip3 install -U -r requirements.txt
echo "Starting hey_joey...."
python3 bot.py
