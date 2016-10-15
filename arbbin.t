template <typename Elem>
arbbin<Elem>::arbbin() throw(error) : _arrel(NULL) {}

template <typename Elem>
arbbin<Elem>::arbbin(const Elem &x, const arbbin &fesq, const arbbin &fdret) throw(error) {
  _arrel = new node;
  try {
    _arrel->info = x;
  } catch(error) {
    delete _arrel;
    throw;
  }

  _arrel->f_esq = fesq._arrel;
  _arrel->f_dret = fdret._arrel;
  // cout<<_arrel->f_esq<<" "<<_arrel->f_dret<<endl;
}

template <typename Elem>
arbbin<Elem>::arbbin(const arbbin &a) throw(error) {
  //Implementar
}

template <typename Elem>
arbbin<Elem>& arbbin<Elem>::operator=(const arbbin &a) throw(error) {
  //Implementar
}

template <typename Elem>
typename arbbin<Elem>::iterador arbbin<Elem>::arrel() const throw() {
  iterador it;
  it._n = _arrel;
  return it;
}


template <typename Elem>
nat arbbin<Elem>::size() const throw() {
  return 0;
}

template <typename Elem>
void arbbin<Elem>::print(iterador it, int indent) {
  if (it) {
    if (it.fill_dret()) print(it.fill_dret(), indent+4);
    if (indent) cout<<std::setw(indent)<<' ';
    if (it.fill_dret()) std::cout<<" /\n" << std::setw(indent) << ' ';
    cout<<*it<<"\n"<<endl;
    if (it.fill_esq()) {
       std::cout << std::setw(indent) << ' ' <<" \\\n";
       print(it.fill_esq(), indent+4);
    }
  }
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
