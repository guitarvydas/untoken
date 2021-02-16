# {
#     gsub(/\[[[:alnum:]]+ [[:alnum:]]+ +[[:digit:]]+ +[[:digit:]]+\]/,"x",$0);
#     printf("%s\n",$0);
# }
BEGIN {FS=" ";}
{
    printf("%s", $2);
}
