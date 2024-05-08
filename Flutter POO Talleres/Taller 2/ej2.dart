void main() {
  ProductoFresco productoFresco = ProductoFresco('01/06/2024', '123', '01/01/2024', 'Colombia');
  productoFresco.showAtributos();

  ProductoRefrigerado productoRefrigerado = ProductoRefrigerado('01/06/2024', '123', '321', '01/01/2024', 5.0, 'Venezuela');
  productoRefrigerado.showAtributos();

  CongeladoPorAire productoCongeladoAire = CongeladoPorAire('01/06/2024', '123', '01/01/2024', 'Chile', -10.0, 5.0, 5.0, 5.0, 0.0);
  productoCongeladoAire.showAtributos();

  CongeladoPorAgua productoCongeladoAgua = CongeladoPorAgua('01/06/2024', '123', '01/01/2024', 'Peru', -10.0, 5.0);
  productoCongeladoAgua.showAtributos();

  CongeladoPorNitrogeno productoCongeladoNitrogeno = new CongeladoPorNitrogeno('01/06/2024', '123', '01/01/2024', 'Panama', -10.0, 'Exposicion', 120);
  productoCongeladoNitrogeno.showAtributos();
}

class Producto {
  String fechaCaducidad;
  String numeroLote;

  Producto(this.fechaCaducidad, this.numeroLote);

  void showAtributos() {
    print('\nFecha de Caducidad: $fechaCaducidad');
    print('Número de Lote: $numeroLote');
  }
}

class ProductoFresco extends Producto {
  String fechaEnvasado;
  String paisOrigen;

  ProductoFresco(String fechaCaducidad, String numeroLote, this.fechaEnvasado, this.paisOrigen) : super(fechaCaducidad, numeroLote);

  void showAtributos() {
    super.showAtributos();
    print('Fecha de Envasado: $fechaEnvasado');
    print('Pais de Origen: $paisOrigen');
  }
}

class ProductoRefrigerado extends Producto {
  String codigoSupervision;
  String fechaEnvasado;
  double tempMantenimientoRecomendada;
  String paisOrigen;

  ProductoRefrigerado(String fechaCaducidad, String numeroLote, this.codigoSupervision, this.fechaEnvasado, this.tempMantenimientoRecomendada, this.paisOrigen) : super(fechaCaducidad, numeroLote);

  void showAtributos() {
    super.showAtributos();
    print('Codigo de Supervisión: $codigoSupervision');
    print('Fecha de Envasado: $fechaEnvasado');
    print('Temperatura de Mantenimiento Recomendada: $tempMantenimientoRecomendada °C');
    print('Pais de Origen: $paisOrigen');
  }
}

class ProductoCongelado extends Producto {
  String fechaEnvasado;
  String paisOrigen;
  double tempMantenimientoRecomendada;

  ProductoCongelado(String fechaCaducidad, String numeroLote, this.fechaEnvasado, this.paisOrigen, this.tempMantenimientoRecomendada) : super(fechaCaducidad, numeroLote);

  void showAtributos() {
    super.showAtributos();
    print('Fecha de Envasado: $fechaEnvasado');
    print('Pais de Origen: $paisOrigen');
    print('Temperatura de Mantenimiento Recomendada: $tempMantenimientoRecomendada °C');
  }
}

class CongeladoPorAire extends ProductoCongelado {
  double porcentajeNitrogeno;
  double porcentajeOxigeno;
  double porcentajeDioxidoCarbono;
  double porcentajeVaporAgua;

  CongeladoPorAire(String fechaCaducidad, String numeroLote, String fechaEnvasado, String paisOrigen, double tempMantenimientoRecomendada, this.porcentajeNitrogeno, this.porcentajeOxigeno, this.porcentajeDioxidoCarbono, this.porcentajeVaporAgua) : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, tempMantenimientoRecomendada);

  void showAtributos() {
    super.showAtributos();
    print('Porcentaje de Nitrogeno: $porcentajeNitrogeno%');
    print('Porcentaje de Oxigeno: $porcentajeOxigeno%');
    print('Porcentaje de Dioxido de Carbono: $porcentajeDioxidoCarbono%');
    print('Porcentaje de Vapor de Agua: $porcentajeVaporAgua%');
  }
}

class CongeladoPorAgua extends ProductoCongelado {
  double salinidadAgua;

  CongeladoPorAgua(String fechaCaducidad, String numeroLote, String fechaEnvasado, String paisOrigen, double tempMantenimientoRecomendada, this.salinidadAgua) : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, tempMantenimientoRecomendada);

  void showAtributos() {
    super.showAtributos();
    print('Salinidad del agua: $salinidadAgua');
  }
}

class CongeladoPorNitrogeno extends ProductoCongelado {
  String metodoCongelacion;
  int tiempoExposicionNitrogeno;

  CongeladoPorNitrogeno(String fechaCaducidad, String numeroLote, String fechaEnvasado, String paisOrigen, double tempMantenimientoRecomendada, this.metodoCongelacion, this.tiempoExposicionNitrogeno) : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, tempMantenimientoRecomendada);

  void showAtributos() {
    super.showAtributos();
    print('Metodo de Congelacion: $metodoCongelacion');
    print('Tiempo de Exposición al Nitrogeno: $tiempoExposicionNitrogeno segundos');
  }
}