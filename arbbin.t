template <typename Elem>
arbbin<Elem>::arbbin() throw(error) : _arrel(NULL), _size(0) {}

template <typename Elem>
arbbin<Elem>::arbbin(const Elem &x, const arbbin &fesq, const arbbin &fdret) throw(error) {
  _arrel = new node();
  try {
    _arrel->info = x;
  } catch(error) {
    delete _arrel;
    throw;
  }

  //Copiar els arbres passats per referència.
  if (fesq._arrel != NULL) _arrel->f_esq = _copy(fesq._arrel);
  if (fdret._arrel != NULL) _arrel->f_dret = _copy(fdret._arrel);
  _size = fesq.size() + fdret.size() + 1;

}

template <typename Elem>
arbbin<Elem>::arbbin(const arbbin &a) throw(error) {
  if (a._arrel != NULL) {
    _arrel = _copy(a._arrel);
    _size = a.size();
  }
}

template <typename Elem>
arbbin<Elem>& arbbin<Elem>::operator=(const arbbin &a) throw(error) {
	if (_arrel != a._arrel) {
		_delete(_arrel);
		_arrel = _copy(a._arrel);
		_size = a.size();
		/*arbbin<Elem> aux(*this);
		try {
		  _delete(_arrel);
		  _arrel = _copy(a._arrel);
		  _size = a.size();
		} catch(...) {
		  _delete(_arrel);
		  _arrel = aux._arrel;
		  _size = aux.size();
		  throw;
		}*/
	}
	return *this;
}

template <typename Elem>
arbbin<Elem>::~arbbin() throw() {
  _delete(_arrel);
}

template <typename Elem>
typename arbbin<Elem>::iterador arbbin<Elem>::arrel() const throw() {
  iterador it;
  it._n = _arrel;
  return it;
}


template <typename Elem>
nat arbbin<Elem>::size() const throw() {
  return _size;
}

/*template <typename Elem>
void arbbin<Elem>::print(iterador it, int indent) {
  if (it) {
    if (it.fill_dret()) print(it.fill_dret(), indent+4);
    if (indent) cout<<std::setw(indent)<<' ';
    if (it.fill_dret()) std::cout<<" /\n" << std::setw(indent) << ' ';
    cout<<*it<<" -> "<<it._n<<"\n"<<endl;
    // cout<<*it<<"\n"<<endl;
    if (it.fill_esq()) {
       std::cout << std::setw(indent) << ' ' <<" \\\n";
       print(it.fill_esq(), indent+4);
    }
  }
}*/

//ARBBIN PRIVATE
template <typename Elem>
void arbbin<Elem>::_delete(node *n) throw() {
  if (n != NULL) {
    _delete(n->f_dret);
    _delete(n->f_esq);
    delete n;
    n = NULL;

  }
}

template <typename Elem>
typename arbbin<Elem>::node* arbbin<Elem>::_copy(node *n) throw(error) {
  node *fesq = NULL;
  node *fdret = NULL;
  node *arrel = new node;
  arrel->info = n->info;

  if (n->f_dret != NULL) fdret = _copy(n->f_dret);
  if (n->f_esq != NULL) fesq = _copy(n->f_esq);

  arrel->f_dret = fdret;
  arrel->f_esq = fesq;
  return arrel;
}

//ITERADOR
template <typename Elem>
arbbin<Elem>::iterador::iterador() throw(error) : _n(NULL) {}

template <typename Elem>
arbbin<Elem>::iterador::iterador(const iterador &it) throw(error) {
	_n = it._n;
}

template <typename Elem>
typename arbbin<Elem>::iterador& arbbin<Elem>::iterador::operator=(const iterador &it) throw(error){
	if (_n != it._n)  {
		_n = it._n;
	}
	return *this;
}

template <typename Elem>
arbbin<Elem>::iterador::~iterador() throw()  {}

template <typename Elem>
Elem arbbin<Elem>::iterador::operator*() const throw(error) {
  if (_n == NULL) throw error(IteradorNul);
  return _n->info;
}

template <typename Elem>
typename arbbin<Elem>::iterador arbbin<Elem>::iterador::fill_esq() const throw(error) {
  if (_n == NULL) throw error(IteradorNul);
  iterador it;
  it._n = _n->f_esq;
  return it;
}

template <typename Elem>
typename arbbin<Elem>::iterador arbbin<Elem>::iterador::fill_dret() const throw(error) {
  if (_n == NULL) throw error(IteradorNul);
  iterador it;
  it._n = _n->f_dret;
  return it;
}

template <typename Elem>
arbbin<Elem>::iterador::operator bool() const throw() {
  return _n != NULL;
}
