#include <iostream>

using namespace std;

int main()
{
    int a,b[9][9]={{1,3, 2, 5, 7, 9, 4, 6, 8}, {4, 9, 8, 2, 6, 1, 3, 7, 5}, {7, 5, 6, 3, 8, 4, 2, 1, 9},{6, 4, 3, 1, 5, 8, 7, 9, 2},{5, 2, 1, 7, 9, 3, 8, 4, 6},{9, 8, 7, 4, 2, 6, 5, 3, 1},{2, 1, 4, 9, 3, 5, 6, 8, 7},{3, 6, 5, 8, 1, 7, 9, 2, 4},{8, 7, 9, 6, 4, 2, 1, 5, 3}};
    int cont=0,cont2=0;
    //cin>>a;
    /*for(int i=0;i<a;i++)
    {
        for(int j=0;j<9;j++)
        {
            for(int k=0;k<9;k++)
            {
                cin>>b[j][k];
            }
        }*/


        for(int l=0;l<9;l++)
        {
            for(int m=0;m<9;m++)
            {
                for(int n=0;n<9;n++)
                {
                    for(int o=0;o<9;o++)
                    {
                        if(b[l][m]==b[n][o])
                        {
                            cont2++;

                        }
                        if(cont2<-1)
                    {
                        break;
                    }
                        for(int p=0;p<9;p++)
                        {
                                if(b[l][m]==b[p][o-1])
                            {
                                cont2++;

                            }
                             if(cont2<-1)
                    {
                        break;
                    }
                        }

                    }
                    if(cont2<-1)
                    {
                        break;
                    }
                }
              if(cont2<-1)
                    {
                        break;
                    }
            }
            if(cont2<-1)
                    {
                        break;
                    }
        }




        cont++;
        if(cont2==1)
        {
            cout<<"Instancia "<<cont<<"\n";
            cout<<"SIM"<<"\n";
            cont2=0;
        }
        else
        {
            cout<<"Instancia "<<cont<<"\n";
            cout<<"NAO"<<"\n";
            cont2=0;
        }
        cout<<"\n";
        cont2=0;



    return 0;
}
