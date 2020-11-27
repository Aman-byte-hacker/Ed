echo -e "\e[1;31m ***** This is a File Encrypter and Decrypter ***** \e[0m"
echo -e "\e[1;32m By Aman vyas \e[0m"
echo -e "\e[1;33m Please Select What you want to do \e[0m"
choice="Encypt Decrypt"

select option in $choice; do
    if [ $REPLY = 1 ];
then
    echo -e "\e[1;31m You selected encyption....\e[0m"
    echo -e "\e[1;41m Go to File Directory and give the file name: \e[0m"
    read File
    sudo gpg -c $File
    echo -e "\e[1;42m The File Has Been Encrypted.. \e[0m"
    rm -rf $File

else
    echo -e "\e[1;31m You selected Decryption....\e[0m"
    echo -e "\e[1;41m Go to File Directory and give the file name: \e[0m"
    read File1
    sudo gpg -d $File1
    echo -e "\e[1;42m The File Has Been Decrypted.. \e[0m"

fi

done    
    