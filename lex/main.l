%{
    #include<"iostream">
    %}

%%
[\n]

    cout<<"Hello World \n"<<endl;
}
%%

int main(){
    yylex();
    return 1;
}
int yywrap()
{
    return 1;
}