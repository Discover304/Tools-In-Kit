#@author Discover304 hobart.yang@qq.com
#bad tool for fun

stty -echo #do not display
echo -e "\033[7m这是git提交机，按任意键继续\033[0m"
echo -e "\033[7mThis is a git machine, press any key to continue\033[0m"
read -n1

echo "-------------------status-----------------------"
git status
echo "-------------------pulling----------------------"
git pull

echo
echo -e "\033[7m请确认，按任意键继续\033[0m"
echo -e "\033[7mPlease, have a check, press any key to continue\033[0m"
read -n1

echo "-------------------adding-----------------------"
git add --all
echo "-------------------commiting--------------------"
echo "请说明你的改动"
echo "Please give a description of your change"
stty echo #show input
read message
git commit -m "$message"
echo "-------------------pushing----------------------"
git push origin master
echo "-------------------status again-----------------"
git status

echo
echo -e "\033[7m检查一下, 按任意键退出\033[0m"
echo -e "\033[7m/check again, press any key to exit\033[0m"
read -n1
exit 1