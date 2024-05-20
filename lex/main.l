%{
    #include<stdio.h>
}
%
%%
[ln]
{
    print("Hello World);
}
%%

int main(){
    yylex();
}
int yywarp(){
    return 1;
}