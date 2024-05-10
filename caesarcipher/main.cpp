#include<iostream>
using namespace std;

int main(){
    string word="world";
    for (int i = 0; i < word.length(); i++)
    {
        int encrype=((int)word[i]+1117)%26;
        cout<<(char)encrype<<endl;
    }
    
    return 0;
}