#include <iostream>
#include <vector>
#include <string>
#include <iomanip>
#include "arbbin.hpp"
#include "huffman.hpp"
using namespace huffman;
using namespace std;
using util::nat;
int main() {

	/*arbbin<int> arbre5(12, arbbin<int>(), arbbin<int>());
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
	arb2.print(arb2.arrel(), 0);*/

	vector<nat> seq;
	seq.push_back(1);
	seq.push_back(2);
	seq.push_back(3);
	seq.push_back(4);
	seq.push_back(3);
	//seq.push_back(3);
	vector<string> taula_codis;
	codi_huffman(seq, taula_codis);
	cout<<"Codis"<<endl;
	for(nat i = 0; i < taula_codis.size(); i++) {
		cout<<taula_codis[i]<<" ";
	}

  return 0;
}
