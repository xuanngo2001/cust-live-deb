./sort-size.sh | grep home\; > home.all.txt
lastest_date=$(cat home.all.txt | cut -d';' -f3 | sort | uniq | tail -n1 | xargs)
cat home.all.txt | grep "${lastest_date}" > home.latest.txt

cat home.latest.txt | cut -d';' -f2,5,6 > home.latest.csv

libreoffice_bin_path=$(whereis libreoffice | cut -d' ' -f2)
"${libreoffice_bin_path}" "$(readlink -ev home.latest.csv)"&
