#include "huffman.hpp"
void huffman::codi_huffman(const vector<nat>& seq, vector<string>& taula_codis) throw(error) {
	if (seq.size() < 2) throw error(SeqCurta);
	vector<elem> freqs = frequencies(seq);
	print(freqs);
	vector<arbre> arbre_freqs;
	
	nat idx = 1;
	while (idx < freqs.size()) {
		//ferho per inparells
		arbre esq, dret;
		nat n = 0, reps = 0;	
		if (freqs[idx-1].second < freqs[idx].second) {
			esq = arbre(freqs[idx-1], arbre(), arbre());
			dret = arbre(freqs[idx], arbre(), arbre());
			n = freqs[idx-1].first;
		} else if (freqs[idx-1].second == freqs[idx].second) {
			if (freqs[idx-1].first < freqs[idx].first) {
				esq = arbre(freqs[idx-1], arbre(), arbre());
				dret = arbre(freqs[idx], arbre(), arbre());
			} else {
				dret = arbre(freqs[idx-1], arbre(), arbre());
				esq = arbre(freqs[idx], arbre(), arbre());
			}
			n = min(freqs[idx-1].first, freqs[idx].first);
		} else {
			dret = arbre(freqs[idx-1], arbre(), arbre());
			esq = arbre(freqs[idx], arbre(), arbre());	
			n = freqs[idx].first;
		}
		
		reps = freqs[idx-1].second+freqs[idx].second;
		elem elem = crear_pair(n, reps);
		
		arbre a(elem, esq, dret);
		cout<<"arrel -> "<<(*a.arrel()).first<<" ";
		cout<<"fe -> "<<(*a.arrel().fill_esq()).first<<" ";
		cout<<"fd -> "<<(*a.arrel().fill_dret()).first<<endl;
		break;
	}
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

//	print(freqs);
	quicksort(freqs, 0, freqs.size());
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
	elem elem = crear_pair(num, reps);
	freqs.push_back(elem);
}


//Canviar noms variables
void huffman::quicksort(vector<elem>& A, int left, int right) throw () {
	if(left >= right) return;
	
	int mig = left + (right - left) / 2;
	if(A[mig].second != A[left].second) swap(A[mig], A[left]);
	int migPoint = partition(A, left+1, right, A[left]);
	if(A[left].second != A[migPoint].second) swap(A[left], A[migPoint]);
	quicksort(A, left, migPoint);
	quicksort(A, migPoint+1, right);

}

int huffman::partition(vector<elem> &A, int left, int right, elem who) throw() {
	for(int i = left; i < right; i++) {
		if(A[i].second <= who.second) {
			swap(A[i], A[left]);
			left++;
		}
	}
	return left-1;
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
