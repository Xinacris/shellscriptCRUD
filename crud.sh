#! /bin/bash
createEntry(){
  clear
  read -p "Entry giriniz: " entry
  echo "$entry" >> entries.data
  sleep 2
}
readEntry(){
  clear
  cat entries.data
  sleep 2
}
updateEntry(){
  clear
  cat entries.data
  read -p "Değiştirmek istediğiniz entry'i giriniz: " toBeUpdated
  read -p "Entry Giriniz: " updatedEntry
  sed -i -r "s/$toBeUpdated/$updatedEntry/" entries.data
}

deleteEntry(){
  clear
  cat entries.data
  read -p "Silmek istediğiniz entry'i giriniz: " toBeDeleted
  sed -i -r "/$toBeDeleted/d" entries.data
  sleep 2
  echo
  echo "Silindi, bizi tercih ettiğiniz için teşekkürler ^^"
  echo
}
while [[ 1 ]];
do
  echo "MENU"
  echo ""
  echo "1) Entry Oluşturun"
  echo "2) Entry'leri görün"
  echo "3) Entry değiştirin"
  echo "4) Entry Silin"
  echo "5) Exit"
  echo ""
  read answer
clear
  case "$answer" in
    1) createEntry;;
    2) readEntry;;
    3) updateEntry;;
    4) deleteEntry;;
    5) exit;;
  esac
done
