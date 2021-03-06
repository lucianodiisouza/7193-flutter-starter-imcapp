import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');

  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text);

    double imc = weight / (height * weight);

    if (imc < 18.6) {
      result = "Abaixo do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc <= 24.9) {
      result = "Peso ideal! (${imc.toStringAsPrecision(2)})";
    } else if (imc > 24.9 && imc <= 29.9) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc > 29.9 && imc <= 34.0) {
      result = "Obesidade Grau I (Peso ideal! (${imc.toStringAsPrecision(2)})";
    } else if (imc > 34.0 && imc <= 39.9) {
      result = "Obesidade Grau II (Peso ideal! (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      result =
          "Obesidade Grau III (Peso ideal! (${imc.toStringAsPrecision(2)})";
    }
  }
}
