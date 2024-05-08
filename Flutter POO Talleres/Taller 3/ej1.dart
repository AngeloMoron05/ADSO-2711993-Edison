void main(){
  Factura factura = new Factura(10000, 'Angelo', 'Edison');
  factura.showFactura();
}

class Precio{
  int precio;

  Precio(this.precio);

  void showPrecio(){
    print('$precio\$');
  }
}

class Factura extends Precio{
  String emisor;
  String cliente;

  Factura(int precio, this.emisor, this.cliente) : super(precio);

  void showFactura(){
    super.showPrecio();
    print(emisor);
    print(cliente);
  }
}