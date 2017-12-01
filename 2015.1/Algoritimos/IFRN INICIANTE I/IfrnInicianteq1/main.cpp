#include <iostream>

using namespace std;

int main()
{
    int x,a,b,c,d;
    cin>>x;
    cin>>a;
    cin>>b;

    for (int i=0;i<x;i++)
    {
      cin>>c;
        cin>>d;

        if(c==a || d==b )
        {
            cout<<"divisa"<<endl;
        }
        else
        {
            if(c>b && d>a)
            {
                cout<<"NE"<<endl;
            }
            else
            {
                    if(c>b && d<a)
                    {
                        cout<<"SE"<<endl;
                    }
                    else
                    {
                        if(c<b && d>a)
                        {
                            cout<<"NO"<<endl;
                        }
                        else
                        {
                            cout<<"SO"<<endl;
                        }

                    }
            }
        }
    }
    return 0;
}
