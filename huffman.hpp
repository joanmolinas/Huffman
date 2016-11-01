
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
};
#endif
