#include <iostream>
#include <iomanip>
#include "arbbin.hpp"

int main() {

  arbbin<int> arbre5(12, arbbin<int>(), arbbin<int>());
  arbbin<int> arbre2(13, arbre5, arbbin<int>());

  arbbin<int> arbre3(8, arbbin<int>(), arbbin<int>());
  arbbin<int> arbre4(10, arbbin<int>(), arbbin<int>());

  arbbin<int> arbre1(9, arbre3, arbre4);
  arbbin<int> arbre0(11, arbre1, arbre2);

  cout<<(*arbre0.arrel().fill_esq())<<endl;
  cout<<(*arbre0.arrel())<<endl;
  cout<<(*arbre0.arrel().fill_dret())<<endl;
  arbre0.print(arbre0.arrel(), 0);

  cout<<endl<<endl;
  arbbin<int> arb(arbre0);
  arb.print(arb.arrel(), 0);
 
  cout<<endl<<endl;
  arbbin<int> arb2 = arbre0;
  arb2.print(arb2.arrel(), 0);



  return 0;
}
