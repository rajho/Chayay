import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const _option_horizontal_padding = 44.0;
const _option_vertical_padding = 12.0;
const _option_font_size = 22.0;

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final icon = Container(
      margin: EdgeInsets.only(top: 88.0, bottom: 52.0),
      child: Icon(
        Icons.star,
        size: 100.0,
        color: Colors.black45,
      ),
    );

    final favoritesOptions = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: _option_horizontal_padding,
                vertical: _option_vertical_padding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Casa papas',
                    style: TextStyle(
                      fontSize: _option_font_size,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(4.0),
                      margin: EdgeInsets.only(left: 16.0),
                      child: Icon(
                        Icons.star,
                        size: 24.0,
                        color: Colors.black54,
                      ))
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: _option_horizontal_padding,
                vertical: _option_vertical_padding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Universidad',
                    style: TextStyle(
                      fontSize: _option_font_size,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 16.0),
                      child: Icon(
                        Icons.star,
                        size: 24.0,
                        color: Colors.black54,
                      ))
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: _option_horizontal_padding,
                vertical: _option_vertical_padding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Casa amor',
                    style: TextStyle(
                      fontSize: _option_font_size,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(4.0),
                      margin: EdgeInsets.only(left: 16.0),
                      child: Icon(
                        Icons.star,
                        size: 24.0,
                        color: Colors.black54,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );

    final actions = Container(
      margin: EdgeInsets.only(top: 52.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: FloatingActionButton.extended(
          onPressed: () => print('Agregar un '
              'favorito'),
          label: Text('Agregar favorito'),
          icon: Icon(
            Icons.star,
            color: Colors.white,
          ),
        ),
      ),
    );

    return Column(
      children: <Widget>[
        icon,
        favoritesOptions,
        Expanded(child: actions),
      ],
    );
  }
}
