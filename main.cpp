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
  cout<<arbre0.size()<<endl;

  // arbbin<int> arbre0esq(1, arbbin<int>(), arbbin<int>());
  // arbbin<int> arbre0dret(3, arbbin<int>(), arbbin<int>());
  // arbbin<int> arbre0(2, arbre0esq, arbre0dret);
  // arbre0esq.print(arbre0esq.arrel(), 0);
  // arbre0dret.print(arbre0dret.arrel(), 0);
  // arbbin<int> arbre0(2, arbbin<int>(1, arbbin<int>(), arbbin<int>()), arbbin<int>(3, arbbin<int>(), arbbin<int>()));
  // arbre0.print(arbre0.arrel(), 0);
  cout<<endl;
  arbbin<int> arb(arbre0);
  arb.print(arb.arrel(), 0);
  cout<<(*arb.arrel())<<endl;
  cout<<arb.size()<<endl;



  return 0;
}
