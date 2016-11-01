#include "huffman.hpp"
void huffman::codi_huffman(const vector<nat>& seq, vector<string>& taula_codis) throw(error) {
	if (seq.size() < 2) throw error(SeqCurta);
	vector<elem> freqs = frequencies(seq);
	//print(freqs);
	vector<arbre> arbre_freqs = crear_arbres_freqs(freqs);

	//Passos:
		//1. Crear arbre de frequencies ordenat
		//2. Agafar els dos primers valors i ficar-los ordenats
		//3. Eliminar aquests elements
		//4. Afegir l'arbre resultant al vector d'arbres.
		//5. Repetir passos fins que solament quedi un arbre
	while(arbre_freqs.size() > 1) {
		arbre arbre1 = min(arbre_freqs[0], arbre_freqs[1]);
		arbre arbre2 = max(arbre_freqs[0], arbre_freqs[1]);
		arbre arrel(crear_arrel(arbre1, arbre2), arbre1, arbre2);
		insertar_arbre_ordenat(arbre_freqs, arrel);
		arbre_freqs.erase(arbre_freqs.begin(), arbre_freqs.begin()+2);
	}

	//print_a(arbre_freqs[0].arrel(), 0);
	string s = "";
	vector<string> cods(freqs.size());
	codis(arbre_freqs[0].arrel(), cods, s);
	taula_codis = cods;
}

void huffman::codis(arbre::iterador it, vector<string> &c, string s) {	
	string aux(s);
	if(it.fill_dret() and it.fill_esq()){
		if (it.fill_esq()) codis(it.fill_esq(), c, s+'0');
		//cout<<s<<endl;
		if (it.fill_dret()) codis(it.fill_dret(), c, s+'1');
		//cout<<s<<endl;
	} else  {
		c[(*it).first-1] = aux;
	}
}

void huffman::insertar_arbre_ordenat(vector<arbre> &v, const arbre &a) {
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

vector<arbre> huffman::crear_arbres_freqs(const vector<elem> &freqs) {
	vector<arbre> v_arbres;
	for (nat i = 0; i < freqs.size(); i++) {
		arbre a(freqs[i], arbre(), arbre());
		insertar_arbre_ordenat(v_arbres, a);
	}

	return v_arbres;
}

elem huffman::crear_pair(nat first, nat second) throw(error) {
	elem e;
	e.first = first;
	e.second = second;
	return e;
}

//Fequencies
vector<elem> huffman::frequencies(const vector<nat> &seq) throw(){
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

nat huffman::repeticions(nat n, const vector<nat> &seq) throw() {
	nat cont = 0;	
	for(nat i = 0; i < seq.size(); i++) {
		if(seq[i] == n) cont++; 
	} 
	return cont;
}

bool huffman::existeix(nat n, const vector<elem> &v) throw() {
	bool trobat = false;	
	nat i = 0;
	while ( i < v.size() && !trobat) {
		trobat = v[i].first == n;
		i++;
	}	

	return trobat;
}

void huffman::inserta(nat num, nat reps, vector<elem> &freqs) throw(){
	elem e = crear_pair(num, reps);
	freqs.push_back(e);
}

arbre huffman::min(arbre e1, arbre e2) throw() {
	return (*e1.arrel()).second <= (*e2.arrel()).second ? e1 : e2;
}

arbre huffman::max(arbre e1, arbre e2) throw() {
	return(*e2.arrel()).second >= (*e1.arrel()).second ? e2 : e1;
}

elem huffman::crear_arrel(arbre e1, arbre e2) throw() {
	return crear_pair(std::min((*e1.arrel()).first, (*e2.arrel()).first), (*e1.arrel()).second + (*e2.arrel()).second);
}


//Borrar
void huffman::print(const vector<elem> &v) {
	cout<<"[ ";
	for(nat i = 0; i < v.size(); i++) {
		cout<<"("<<v[i].first<<":"<<v[i].second<<") ";
	}
	cout<<"]"<<endl;
}

void huffman::print_v(const vector<nat > &v) {
	cout<<"[ ";
	for(nat i = 0; i < v.size(); i++) {
		cout<<v[i]<<endl;
	}
	cout<<"]"<<endl;
}

void huffman::print_a(arbbin<elem>::iterador it, int indent) {
	if (it) {
    if (it.fill_dret()) print_a(it.fill_dret(), indent+4);
    if (indent) cout<<std::setw(indent)<<' ';
    if (it.fill_dret()) std::cout<<" /\n" << std::setw(indent) << ' ';
		cout<<"("<<(*it).first<<":"<<(*it).second<<") "<<"\n"<<endl;
    // cout<<*it<<"\n"<<endl;
    if (it.fill_esq()) {
       std::cout << std::setw(indent) << ' ' <<" \\\n";
       print_a(it.fill_esq(), indent+4);
    }
  }
}
