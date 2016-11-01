
#ifndef _HUFFMAN_HPP
#define _HUFFMAN_HPP

#include <vector>
#include <string>
#include <iomanip> 
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
	elem crear_pair(nat first, nat second) throw(error);
	arbre min(arbre e1, arbre e2) throw();
	arbre max(arbre e1, arbre e2) throw();
	elem crear_arrel(arbre e1, arbre e2) throw();
	vector<arbre> crear_arbres_freqs(const vector<elem> &freqs);
	void insertar_arbre_ordenat(vector<arbre> &v, const arbre &a);
	void codis(arbre::iterador it, vector<string> &c, string s);

	void print(const vector<elem> &v);
	void print_v(const vector<nat> &v);
	void print_a(arbbin<elem>::iterador it, int indent);
};
#endif
