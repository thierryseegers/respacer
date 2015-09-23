#include "respacer.h"

#include <lm/model.hh>

#include <iostream>
#include <string>

using namespace std;

int main(int argc, const char * argv[])
{
    respacer r("./aspell_en_expanded", "./romeo_and_juliet.mmap");

    string sentence;
    getline(cin, sentence);
    
    auto const respaced = r.respace(sentence);
    
    for(auto i = respaced.begin(); i != respaced.end(); ++i)
    {
        cout << (i == respaced.begin() ? "" : " ") << *i;
    }
    cout << endl;
    
    return 0;
}
