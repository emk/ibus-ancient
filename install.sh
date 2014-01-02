sudo cp *.mim /usr/share/m17n/
sudo ibus-table-createdb -n /usr/share/ibus-table/tables/egyptian-hieroglyphs.db -s egyptian-hieroglyphs-table.txt
ibus-daemon -drx
