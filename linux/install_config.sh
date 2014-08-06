#copy user files
echo -n "Updating ~/.bashrc ..."
if [ ~/ = /root/ ]
then cp bashrc_root ~/.bashrc
else cp bashrc ~/.bashrc
fi
echo " Done."

echo -n "Updating ~/.bash_aliases ..."
cp bash_aliases ~/.bash_aliases
echo " Done."

echo -n "Updating ~/.gitk ..."
cp gitk ~/.gitk
echo " Done."

echo -n "Updating ~/.gitconfig ..."
cp gitconfig ~/.gitconfig
echo " Done."

echo -n "Updating /etc/inputrc ..."
cp inputrc /etc/inputrc
echo " Done."

#if conky file exists, copy that too
if [ -f ~/.conkyrc ]
then
  echo -n "Updating ~./conky ..."
  cp conkyrc ~/.conkyrc
  echo " Done."
fi

#copy root files if home is not root
if [ ~/ != /root/ ]
then
  echo " - Home is not /root - "
  
  echo -n "Updating /root/.bashrc ..."
  cp bashrc_root /root/.bashrc
  echo " Done."

  echo -n "Updating /root/.bash_aliases ..."
  cp bash_aliases /root/.bash_aliases
  echo " Done."
fi

echo "--- Updating Preferences Complete ---"
