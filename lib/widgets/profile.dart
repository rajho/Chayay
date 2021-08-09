import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const _option_horizontal_padding = 44.0;
const _option_vertical_padding = 12.0;
const _option_font_size = 22.0;

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final icon = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(color: Colors.black54),
        shape: BoxShape.rectangle,
      ),
      margin: EdgeInsets.only(top: 88.0, bottom: 52.0),
      child: Icon(
        Icons.person,
        size: 100.0,
        color: Colors.black45,
      ),
    );

    final profileOptions = Container(
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
                    'Editar perfil',
                    style: TextStyle(
                      fontSize: _option_font_size,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(color: Colors.black54),
                        shape: BoxShape.rectangle,
                      ),
                      margin: EdgeInsets.only(left: 16.0),
                      child: Icon(
                        Icons.edit,
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
                    'Viajes frecuentes',
                    style: TextStyle(
                      fontSize: _option_font_size,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(color: Colors.black54),
                        shape: BoxShape.rectangle,
                      ),
                      margin: EdgeInsets.only(left: 16.0),
                      child: Icon(
                        Icons.map,
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
                    'Invitar amigos',
                    style: TextStyle(
                      fontSize: _option_font_size,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(color: Colors.black54),
                        shape: BoxShape.rectangle,
                      ),
                      margin: EdgeInsets.only(left: 16.0),
                      child: Icon(
                        Icons.people,
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
                    'Notificaciones',
                    style: TextStyle(
                      fontSize: _option_font_size,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(color: Colors.black54),
                        shape: BoxShape.rectangle,
                      ),
                      margin: EdgeInsets.only(left: 16.0),
                      child: Icon(
                        Icons.notifications,
                        size: 24.0,
                        color: Colors.black54,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );

    return Column(
      children: <Widget>[
        icon,
        profileOptions,
      ],
    );
  }
}
