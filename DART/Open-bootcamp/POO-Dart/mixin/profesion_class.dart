mixin Profesion {
  String? profesion;

  String competencias(List comptetencias) {
    StringBuffer stringBuffer = StringBuffer();

    stringBuffer.write('La $profesion tiene las siguientes competencias');

    for (var competencia in comptetencias) {
      stringBuffer.writeln('- $competencia');
    }

    return stringBuffer.toString();
  }
}
