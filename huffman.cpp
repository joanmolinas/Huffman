#include "huffman.hpp"
#include <utility>

typedef pair<nat, nat> elem;
typedef arbbin<elem> arbre;

bool existeix(nat n, const vector<elem> &v) throw() {
	bool trobat = false;	
	nat i = 0;
	while ( i < v.size() && !trobat) {
		trobat = v[i].first == n;
		i++;
	}	

	return trobat;
}


elem crear_pair(nat first, nat second) throw(error) {
	elem e;
	e.first = first;
	e.second = second;
	return e;
}

void inserta(nat num, nat reps, vector<elem> &freqs) throw(){
	elem e = crear_pair(num, reps);
	freqs.push_back(e);
}


nat repeticions(nat n, const vector<nat> &seq) throw() {
	nat cont = 0;	
	for(nat i = 0; i < seq.size(); i++) {
		if(seq[i] == n) cont++; 
	} 
	return cont;
}



vector<elem> frequencies(const vector<nat> &seq) throw(){
	vector<elem> freqs;
	nat i = 0;
	while (i < seq.size()) {
		if(!existeix(seq[i], freqs)) {
			nat reps = repeticions(seq[i], seq);
			inserta(seq[i], reps, freqs);
		}
		i++;		
	}
	return freqs;
}

void insertar_arbre_ordenat(vector<arbre> &v, const arbre &a) {
		vector<arbre> aux;	
		bool insertat = false;
		while(!insertat && !v.empty()) {
			if((*v.back().arrel()).second > (*a.arrel()).second) {
				aux.push_back(v.back());	
				v.pop_back();
			} else { 
				if(((*v.back().arrel()).second == (*a.arrel()).second && 
					(*v.back().arrel()).first < (*a.arrel()).first) ||
					(*v.back().arrel()).second < (*a.arrel()).second) {
					v.push_back(a);
					insertat = true;
				} else {
					aux.push_back(v.back());
					v.pop_back();				
				}
			}

		}
		if (v.empty()) {
			v.push_back(a);
		}
		while (!aux.empty()) {
			v.push_back(aux.back());
			aux.pop_back();
		}
}

vector<arbre> crear_arbres_freqs(const vector<elem> &freqs) {
	vector<arbre> v_arbres;
	for (nat i = 0; i < freqs.size(); i++) {
		arbre a(freqs[i], arbre(), arbre());
		insertar_arbre_ordenat(v_arbres, a);
	}

	return v_arbres;
}

void codis(arbre::iterador it, vector<string> &c, string s) {	
	string aux(s);
	if(it.fill_dret() and it.fill_esq()){
		if (it.fill_esq()) codis(it.fill_esq(), c, s+'0');
		if (it.fill_dret()) codis(it.fill_dret(), c, s+'1');
	} else  {
		c[(*it).first-1] = aux;
	}
}

elem crear_arrel(arbre e1, arbre e2) throw() {
	return crear_pair(std::min((*e1.arrel()).first, (*e2.arrel()).first), (*e1.arrel()).second + (*e2.arrel()).second);
}

void huffman::codi_huffman(const vector<nat>& seq, vector<string>& taula_codis) throw(error) {
	if (seq.size() < 2) throw error(SeqCurta);
	vector<elem> freqs = frequencies(seq);
	vector<arbre> arbre_freqs = crear_arbres_freqs(freqs);

	//Passos:
		//1. Crear arbre de frequencies ordenat
		//2. Agafar els dos primers valors i ficar-los ordenats
		//3. Eliminar aquests elements
		//4. Afegir l'arbre resultant al vector d'arbres.
		//5. Repetir passos fins que solament quedi un arbre

	while(arbre_freqs.size() > 1) {
		arbre arbre1 = arbre_freqs[0];
		arbre arbre2 = arbre_freqs[1];
		arbre arrel(crear_arrel(arbre1, arbre2), arbre1, arbre2);
		insertar_arbre_ordenat(arbre_freqs, arrel);
		arbre_freqs.erase(arbre_freqs.begin(), arbre_freqs.begin()+2);
	}

	string s;
	vector<string> cods(freqs.size());
	codis(arbre_freqs[0].arrel(), cods, s);
	taula_codis = cods;
}


