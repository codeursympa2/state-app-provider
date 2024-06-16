class ProductModel{

  final String _name;
  int _qt=0;

  ProductModel.withoutQt(this._name);

  String get name => _name;

  int get qt => _qt;

  set qt(int value) {
    _qt = value;
  }
}