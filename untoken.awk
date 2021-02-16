BEGIN {FS="[\[ ]";}

{
    # printf(">> %s %s %s %s\n", $0, uridecode($1), uridecode($2), uridecode($3));
    if ($2 == "comment") {
	printf("// %s\n", uridecode($3));
    } else {
	printf("%s",uridecode($3));
    }
}



function hex2dec(s,  num) {
    num = index("0123456789ABCDEF",toupper(substr(s,length(s)))) - 1
    sub(/.$/,"",s)
    return num + (length(s) ? 16*hex2dec(s) : 0)
}

function uridecode(str) {
    len=length(str)
    for (i=1;i<=len;i++) {
      if ( substr(str,i,1) == "%") {
        L = substr(str,1,i-1) # chars to left of "%"
        M = substr(str,i+1,2) # 2 chars to right of "%"
        R = substr(str,i+3)   # chars to right of "%xx"
        str = sprintf("%s%c%s",L,hex2dec(M),R)
      }
    }
    return str;
}    
