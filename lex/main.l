%{
    #include<stdio.h>
    %}

%%
[\n]

    printf{("Hello World \n");
}
%%

int main(){
    yylex();
}
int yywrap()
{
    return 1;
}