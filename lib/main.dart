import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        buttonColor: Colors.purple,
        buttonTheme:  const ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const MyMenuWidget(),
    );
  }
}

class Kitten {
  const Kitten(
      {required this.name,
      required this.imageUrl,
      required this.description,
      required this.price});

  final String name;
  final String imageUrl;
  final String description;
  final int price;
}

final String server =
    defaultTargetPlatform == TargetPlatform.android ? "10.0.2.2" : "Localhost";

final List<Kitten> _Kittens = <Kitten>[
  Kitten(
    name: 'Pozole',
    imageUrl: 'assets/pozole-saludable.jpg',
    description:
        'caldo hecho a base de granos de maíz de un tipo conocido comúnmente como cacahuazintle, al que se agrega, según la región, carne de pollo o de cerdo como ingrediente secundario',
    price: 150,
  ),
  Kitten(
    name: 'Chilaquiles',
    imageUrl: 'assets/chilaquiles.jpg',
    description: 'platillo típico mexicano hecho a base de trozos de tortilla de maíz frita o totopos bañados en salsa verde o roja y aderezados con un poco de crema fresca y queso desmoronado',
    price: 50,
  ),
  Kitten(
    name: 'Hamburguesa',
    imageUrl: 'assets/hamburguesas-parrilla.jpg',
    description:
        'carne molida o de origen vegetal, aglutinada en forma de filete cocinado a la parrilla o a la plancha, aunque también puede freírse u hornearse.',
    price: 75,
  ),
  Kitten(
    name: 'Burritos',
    imageUrl: 'assets/burritos-caseros.jpg',
    description: 'tortilla de harina rellena de carne de res, jitomate, frijoles, queso, chile.',
    price: 50,
  ),Kitten(
    name: 'Sushi',
    imageUrl: 'assets/conjunto-rollos-sushi.jpg',
    description: 'arroz aderezado con vinagre de arroz, azúcar y sal y combinado con otros ingredientes como pescados crudos, mariscos,verduras, etc.',
    price: 100,
  ),Kitten(
    name: 'Mixiote',
    imageUrl: 'assets/mixiote.jpg',
    description: 'carne enchilada cocida al vapor, envuelta en una película que se desprende de la penca del maguey pulquero ',
    price: 150,
  ),Kitten(
    name: 'Ramen',
    imageUrl: 'assets/ramen.jpg',
    description: 'fideos japoneses servidos en un caldo preparado comúnmente a base de hueso de cerdo o pollo y distintas verduras, sus sabores varían entre la pasta de miso, salsa de soya o sal, contiene diferentes guarniciones como rebanadas de carne de cerdo',
    price: 150,
  ),Kitten(
    name: 'Torta Ahogada',
    imageUrl: 'assets/torta-ahogada.jpg',
    description: 'birote se rellena de carnitas estilo Jalisco en rebanadas, cubos o trozos, luego se sumerge en salsa picante de chile de árbol',
    price: 30,
  ),Kitten(
    name: 'Tacos al pastor',
    imageUrl: 'assets/tacos-al-pastor.jpg',
    description: 'carne es acompañada con tortillas, cebolla, cilantro, piña, y distintos tipos de salsa y/o guacamole.',
    price: 5*50,
  ),Kitten(
    name: 'Tacos dorados',
    imageUrl: 'assets/receta-tacos-dorados.jpg',
    description: 'dorados en aceite y que tiene una textura crujiente',
    price: 5*40,
  ),Kitten(
    name: 'Machete',
    imageUrl: 'assets/machete_mexicaO.jpeg',
    description: 'tortilla de maíz, o también de trigo, doblada por la mitad que, puede estar rellena de queso o de otros ingredientes.',
    price: 70,
  ),Kitten(
    name: 'Pizza',
    imageUrl: 'assets/pizza-ingredientes.jpg',
    description: ' elaborado con harina de trigo, levadura, agua y sal que tradicionalmente se cubre con salsa de tomate y queso y se hornea a alta temperatura en un horno de leña.',
    price: 150,
  ),Kitten(
    name: 'Fresas con crema',
    imageUrl: 'assets/Fresas-Crema.jpg',
    description: 'Las fresas con nata o crema son un postre ',
    price: 30,
  ),Kitten(
    name: 'Pastel de chocolate',
    imageUrl: 'assets/pastel-de-chocolate.jpg',
    description: 'El pastel de chocolate, tarta de chocolate o torta de chocolate es un postre.',
    price: 80,
  ),Kitten(
    name: 'Café',
    imageUrl: 'assets/cafe.jpg',
    description: 'café originada en Italia. Debe su término a la obtención de esta bebida a través de una cafetera espresso. Se caracteriza por su rápida preparación a una alta presión y por un sabor y textura.',
    price: 30,
  ),

];

class MyMenuWidget extends StatelessWidget {
  const MyMenuWidget({Key? key}) : super(key: key);
  Widget _dialogBuilder(BuildContext context, Kitten kitten) {
    ThemeData localTheme = Theme.of(context);
    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      children: [
        Image.asset(
          kitten.imageUrl,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                kitten.name,
                style: localTheme.textTheme.headline4,
              ),
              SizedBox(height: 16.0),
              Text(
                kitten.description,
                style: localTheme.textTheme.bodyText1,
              ),
              Text(
                '${kitten.price}Mxn',
                style: localTheme.textTheme.subtitle1!.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Wrap(
                    children: [
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Salir'),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: const Text('Comprar'),
                      )
                    ],
                  )),
            ],
          ),
        )
      ],
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return new GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (context) => _dialogBuilder(context, _Kittens[index])),
      child: Container(
        padding: const EdgeInsets.only(left: 16.0),
        alignment: Alignment.centerLeft,
        child: Text(_Kittens[index].name,
            style: Theme.of(context).textTheme.headline4),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: _Kittens.length,
        itemExtent: 60.0,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}
