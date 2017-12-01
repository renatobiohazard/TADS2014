#include <iostream>
#include <string.h>
#include <cstdlib>
#include <stdio.h>
using namespace std;

int main()
{

    int a;

    string b,c,d;

    cin>>a;

    for(int i=0;i<a;i++)
    {
        cin>>b;
        cin>>c;
        d=c;
        c=c+d;;
    size_t n=c.find(b);



    size_t m=d.find(b);

    if(n == string::npos && m== string::npos)
    {
        cout << "N\n";
    }

  else
  {
    cout << "S\n";
  }


    }
    return 0;
}
