use 5.20.0; no strict;
open(r,<$ARGV[0]>) || die "\"$ARGV[0]\": $!";

map{
s/kie/ќ/g;
s/Kie|KIE/Ќ/g;

s/szcz/щ/g;
s/Szcz|SZCZ/Щ/g;

s/ść/щ/g;
s/Ść|ŚĆ/щ/g;

s/ści/щі/g;
s/Ści/Щі/g;
s/ŚCI/ЩІ/g;

s/ci/чi/g;
s/Ci/Чi/g;
s/CI/ЧІ/g;

s/sc/ш/g;
s/Sc|SC/Ш/g;

s/si/с̌i/g;
s/Si/С̌i/g;
s/SI/С̌І/g;

s/rz/р̌/g;
s/Rz|RZ/Р̌/g;

s/dzi/д̌i/g;
s/Dzi/Д̌i/g;
s/DZI/Д̌І/g;

s/dź/д̌ь/g;
s/Dź/Д̌ь/g;
s/DŹ/Д̌Ь/g;

s/dż/д̌/g;
s/Dż|DŻ/Д̌/g;

s/ie/іє/g;
s/Ie/Іє/g;
s/IE/ІЄ/g;

s/je/ȷ̈/g;
s/Je|JE/ȷ̈/g;

s/ja/я/g;
s/Ja|JA/Я/g;

s/ia/ія/g;
s/Ia/Ія/g;
s/IA/ІЯ/g;

s/ją/я̌/g;
s/Ją|JĄ/Я̌/g;

s/ią/ія̌/g;
s/Ią/Ія̌/g;
s/IĄ/ІЯ̌/g;

s/ię/іє̌/g;
s/Ię/Іє̌/g;
s/IĘ/ІЄ̌/g;

s/ję/ȷ́/g; # ȷ̌ J̌ ȷ́ J́
s/ję|ję/J́/g;

s/io/іё/g;
s/Io/Іё/g;
s/IO/ІЁ/g;

s/jo/ё/g;
s/Jo|JO/Ё/g;

s/ji/ї/g;
s/Ji|JI/Ї/g;

s/ii/ії/g;
s/Ii/Ії/g;
s/II/ІЇ/g;

s/ju/ю/g;
s/Ju|JU/Ю/g;

s/iu/ію/g;
s/Iu/Ію/g;
s/IU/ІЮ/g;

s/zi/жi/g;
s/Zi/Жi/g;
s/ZI/ЖІ/g;

s/ą/а̌/g;
s/Ą/А̌/g;

s/ę/е̌/g;
s/Ę/Е̌/g;

s/cz/ч/g;
s/Cz|CZ/Ч/g;

s/sz/ш/g;
s/Sz|SZ/Ш/g;

s/ch/х/g;
s/Сh|CH/Х/g;

s/f/ф/g;
s/F/Ф/g;

s/p/п/g;
s/P/П/g;

s/ć/ч/g; #ц̌
s/Ć/Ч/g;

s/w/в/g;
s/W/В/g;

s/y/и/g;
s/Y/И/g;

s/t/т/g;
s/T/Т/g;

s/n/н/g;
s/N/Н/g;

s/m/м/g;
s/M/М/g;

s/r/р/g;
s/R/Р/g;

s/g/ѓ/g;
s/G/Ѓ/g;

s/l/љ/g;
s/L/Љ/g;

s/s/с/g;
s/S/С/g;

s/ś/с̌/g;
s/Ś/С̌/g;

s/u/у/g;
s/U/У/g;

s/b/б/g;
s/B/Б/g;

s/c/ц/g;
s/c/Ц/g;

s/i/і/g;
s/I/І/g;

s/ż/ж/g;
s/Ż/Ж/g;

s/k/к/g;
s/K/К/g;

s/z/з/g;
s/Z/З/g;

s/o/о/g;
s/O/О/g;

s/ó/у̊/g;
s/Ó/У̊/g;

s/d/д/g;
s/D/Д/g;

s/e/е/g;
s/E/Е/g;

s/ł/у́/g; #л
s/Ł/У́/g;

s/v/в/g;
s/V/В/g;

s/j/ј/g;
s/J/Ј/g;

s/h/г/g;
s/H/Г/g;

s/ń/њ/g;
s/Ń/Њ/g;

s/ź/з́/g;
s/Ń/З́/g;

s/a/а/g;
s/A/А/g;

print;
}<r>;
