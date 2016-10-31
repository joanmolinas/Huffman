
#ifndef _HUFFMAN_HPP
#define _HUFFMAN_HPP

#include <vector>
#include <string>
#include "arbbin.hpp"

#include <esin/error>
#include <esin/util>

using util::nat;
using namespace std;

typedef pair<nat, nat> elem;
typedef arbbin<elem> arbre;


namespace huffman {

	void codi_huffman(const vector<nat>& seq, vector<string>& taula_codis) throw(error);

	static const int SeqCurta = 21;
	
	//Funcions auxiliars
	vector<elem> frequencies(const vector<nat> &seq) throw();
	nat repeticions(nat n, const vector<nat> &seq) throw();
	bool existeix(nat n, const vector<elem> &v) throw();
	void inserta(nat num, nat reps, vector<elem> &freqs) throw();
	void quicksort(vector<elem>& A, int left, int right) throw ();
	int partition(vector<elem> &A, int left, int right, elem who) throw();
	elem crear_pair(nat first, nat second) throw(error);

	void print(const vector<elem> &v);
	void print_v(const vector<nat> &v);
};
#endif
