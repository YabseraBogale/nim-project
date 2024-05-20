%{
    #include<stdio.h>
}
%
%%
[ln]
{
    print("Hello World ln");
}
%%

int main(){
    yylex();
}
int yywarp(){
    return 1;
}