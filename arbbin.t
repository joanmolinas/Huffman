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

  if (_arrel->f_esq != NULL) _arrel->f_esq = _copy(fesq._arrel);
  if (_arrel->f_dret != NULL) _arrel->f_dret = _copy(fdret._arrel);
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
  //Implementar
  //Guardar una copia del arbre des de _arrel
  //borrari
  //Intentar copiar
    // Si algo pasa malament, restaurar.
    arbbin<Elem> aux(this);
    try {
      _delete(_arrel);
      _copy(a._arrel);
      _size = a.size();
    } catch {
      _delete(this);
      _arrel = aux._arrel;
      _size = aux.size();
      throw;
    }
}

template <typename Elem>
arbbin<Elem>::~arbbin() throw() {
  // delete _arrel;
  if (_arrel != NULL) {
    cout<<"Borrant node "<<_arrel->info<<" "<<_arrel<<endl;
  }
  // _delete(_arrel);
  // cout<<"\n"<<endl;
  delete _arrel;
  _arrel = NULL;
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

template <typename Elem>
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
}

//ARBBIN PRIVATE
template <typename Elem>
void arbbin<Elem>::_delete(node *n) throw() {
  if (n != NULL) {
    if (n->f_dret != NULL) cout<<"borrem fill dret "<<n->f_dret->info<<endl;
    _delete(n->f_dret);
    if (n->f_esq != NULL) cout<<"borrem fill esquerra "<<n->f_esq->info<<endl;
    _delete(n->f_esq);
    cout<<"Borrem "<<n->info<<endl;
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
  //Implementar
}

template <typename Elem>
typename arbbin<Elem>::iterador& arbbin<Elem>::iterador::operator=(const iterador &it) throw(error){
  //Implementar
}

template <typename Elem>
arbbin<Elem>::iterador::~iterador() throw() {
  //Implementar
}

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
