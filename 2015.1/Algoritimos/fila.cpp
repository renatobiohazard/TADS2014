#include <iostream>
#include <time.h>
using namespace std;
inline void mostrarclock(clock_t inicio, clock_t fim)
{
    double i;
    cout<<"clock inicial         : "<<inicio<<"\n";
    cout<<"clock final           : "<<fim<<"\n";
    cout<<"total de clock ticks  : "<<fim-inicio<<"\n";
    i=fim-inicio;
    cout<<"tempo em segundos     : "<<i/CLOCKS_PER_SEC;

}


int main() {
	ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    int e, v[100001],s,vs[100001];
    int i;
    bool a[1000001];
    clock_t inicio,fim;

    inicio=clock();
    cin>>e;
while(e!=0)
    {


        for(i=0;i<e;i++)
        {
            cin>>v[i];
        }
        cin>>s;

        for (i=0;i<s;i++)
        {
            cin>>vs[i];
              a[vs[i]]=true;
        }
         for(i=0;i<e;i++)
        {
               if(a[v[i]]==false)
               {
                   cout<<v[i]<<" ";
               }

        }
        cout<<"\n"<<e-s<<"\n";
    cin>>e;
    }
    cout<<0<<"\n";
    fim=clock();
    mostrarclock(inicio,fim);
    return 0;
}

