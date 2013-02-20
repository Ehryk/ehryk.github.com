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

#copy files
echo -n "Updating ~/.bashrc ..."
cp ~/Projects/ehryk.github.com/linux/bashrc ~/.bashrc
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

