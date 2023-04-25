import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  //* Constructor
    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });
  //* Atributos de la clase
    final String answer;
    final bool forced;
    final String image;

    ///Factory es una palabra clave que que define un *CONTRUCTOR DE FABRICA* 
    ///El cual puede devolver una instancia existente o una nueva segun se requiera
    ///* Aqui tomamos un mapa y buscaremos dentro de su contenido los campos
    ///* que ocupamos para crear nuestro objeto 
    factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );
    ///*Este es lo contrario, creamos un JSON, en base a los valores de nuestro atributo
    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

    ///*Construimos una nueva instancia de mensaje con los valores de nuestros atributos
    Message toMessageEntity() => Message(
      text: answer == 'yes' ? 'Si' : 'No', 
      fromWho: FromWho.hers, 
      imageUrl: image
    );
}