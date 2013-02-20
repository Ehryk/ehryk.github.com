#if project directory doesn't exist, make it
if [ ! -d ~/Projects ]
then
  cd ~
  mkdir Projects
fi

#if project doesn't exist, clone it
if [ ! -d ~/Projects/ehryk.github.com ]
then
  cd ~/Projects
  git clone git@github.com:Ehryk/ehryk.github.com.git
fi

#update Project
echo -n "Updating ~/Projects/ehryk.github.com/ : "
cd ~/Projects/ehryk.github.com
git pull

#copy user files
echo -n "Updating ~/.bashrc ..."
if [ ~/ = /root/ ]
then cp ~/Projects/ehryk.github.com/linux/bashrc_root ~/.bashrc
else cp ~/Projects/ehryk.github.com/linux/bashrc ~/.bashrc
fi
echo " Done."

echo -n "Updating ~/.bash_aliases ..."
cp ~/Projects/ehryk.github.com/linux/bash_aliases ~/.bash_aliases
echo " Done."

echo -n "Updating /etc/inputrc ..."
cp ~/Projects/ehryk.github.com/linux/inputrc /etc/inputrc
echo " Done."

#if conky file exists, copy that too
if [ -f ~/.conkyrc ]
then
  echo -n "Updating ~./conky ..."
  cp ~/Projects/ehryk.github.com/linux/conkyrc ~/.conkyrc
  echo " Done."
fi

#copy root files if home is not root
if [ ~/ != /root/ ]
then
  echo " - Home is not /root - "
  
  echo -n "Updating /root/.bashrc ..."
  cp ~/Projects/ehryk.github.com/linux/bashrc_root /root/.bashrc
  echo " Done."

  echo -n "Updating /root/.bash_aliases ..."
  cp ~/Projects/ehryk.github.com/linux/bash_aliases /root/.bash_aliases
  echo " Done."
fi

echo "--- Updating Preferences Complete ---"