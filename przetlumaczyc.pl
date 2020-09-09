use 5.20.0;
no strict;

#say $ARGV[0];

#$ARGV==1 && say "yes" && ($ARGV[0] eq "-f") && ($fname="$ARGV[0]") && say $fname && open(r,<$fname>) || die "Failed to open input file: $!";

open(r,<$ARGV[0]>) || die "\"$ARGV[0]\": $!";

$f="";

map{
  $f.=$_;
}<r>;

#say $f;

map {
 /^</ && goto end;
 $t=$_;
 $t=~s/.*</</;
 s/<.*//;
 s/kie/ќ/g;
 s/Kie|KIE/Ќ/g;
 s/szcz/щ/g;
 s/SZCZ|Szcz/Щ/g;
 s/ść/щ/g;
 s/ŚĆ|Ść/Щ/g;
 s/ści/щi/g;
 s/ŚCI/Щi/g;
 s/Ści/Щi/g;
 s/ci/ц́i/g;
 s/CI/Ц́I/g;
 s/Ci/Ц́i/g;
 s/sc|si/с́i/g;
 s/Sc|SC|Si|SI/Ш/g;



 s/rz/р̌/g;
 s/Rz|RZ/Р̌/g;
 s/dzi/д̌i/g;
 s/Dzi/Д̌i/g;
 s/DZI/Д̌I/g;
 s/dź/д̌ь/g;
 s/DŹ/Д̌Ь/g;
 s/Dź/Д̌ь/g;
 s/dż/џ/g;
 s/Dż|DŻ/Џ/g;
 s/ie/є/g;
 s/Ie|IE/Є/g;
 s/je/ȷ̈/g;
 s/Jе/Ј̈/g;
 s/JE/Ј̈/g;
 s/zi/жi/g;
 s/Zi/Жi/g;
 s/ZI/ЖI/g;
 s/ja|ia/я/g;
 s/Ja|Ia|JA|IA/Я/g;
 s/ją|ią/я̌/g;
 s/Ją|Ią|JĄ|IĄ/Я̌/g;
 s/ię|ję/є̌/g;
 s/Ię|Ję|IĘ|JĘ/Є̌/g;
 s/io|jo/ё/g;
 s/Io|Jo|IO|JO/Ё/g;
 s/ji|ii/ї/g;
 s/Ji|Ii|JI|II/Ї/g;
 s/ju|iu/ю/g;
 s/Ju|Iu|JU|IU/Ю/g;
 s/ą/а̌/g;
 s/Ą/А̌/g;
 s/ę/е̌/g;
 s/Ę/Е̌/g;
 s/cz/ч/g;
 s/CZ|Cz/Ч/g;
 s/sz/ш/g;
 s/SZ|Sz/Ш/g;
 s/ch/х/g;
 s/CH|Ch/Х/g;
 s/la/ля/g;
 s/LA/ЛЯ/g;
 s/La/Ля/g;
 s/f/ф/g;
 s/F/Ф/g;
 s/p/п/g;
 s/P/П/g;
 s/ć/ц́/g;
 s/Ć/Ц́/g;
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
 s/g/ґ/g;
 s/G/Ґ/g;
 s/l/л/g;
 s/L/Л/g;
 s/s/с/g;
 s/S/С/g;
 s/ś/с̌/g;
 s/Ś/С̌/g;
 s/ó/у̊/g;
 s/Ó/У̊/g;
 s/u/у/g;
 s/U/У/g;
 s/b/б/g;
 s/B/Б/g;
 s/c/ц/g;
 s/C/Ц/g;
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
 s/d/д/g;
 s/D/Д/g;
 s/e/е/g;
 s/E/Е/g;
 s/ł/л/g;
 s/Ł/Л/g;
 s/v/в/g;
 s/V/В/g;
 s/h/г/g;
 s/H/Г/g;
 s/ń/њ/g;
 s/Ń/Њ/g;
 s/ź/з́/g;
 s/Ź/З́/g;
 s/a/а/g;
 s/A/А/g;

 #s/(м|к|п|з|в|т|ц|д|ш)( )/$1ъ$2/g;
 #s/(М|К|П|З|В|Т|Ц|Д|Ш)( )/$1ъ$2/g;
 #s/(м|к|п|з|в|т|ц|д|ш)(\.|,)/$1ъ$2/g;
 #s/(М|К|П|З|В|Т|Ц|Д|Ш)(\.|,)/$1Ъ$2/g;
 #/м$|к$|п$|з$|в$|т$|ц$|д$|ш$/ && s/$/ъ/g;
 #/М$|К$|П$|З$|В$|Т$|Ц$|Д$|Ш$/ && s/$/Ъ/g;

 end:
 print;
 !$t && print '>';
 #/^</ && print '>';
 #$t && print
 $t && print"$t>";
 #$t=~s/><//;
 #print ' ';
 #say'>';
 #say'';
 #say "Tag: $t";
 $t="";
}split/>/,"$f";
#split /<|>/, @ARGV;
say;
