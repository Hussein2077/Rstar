
import 'package:flutter/material.dart';




const String fontFamily='BalooBhaijaan2';


//todo pass var here
ThemeData lightTheme = ThemeData(
    textTheme:  TextTheme(
      headlineLarge: const TextStyle(
          fontFamily: fontFamily,
          fontSize:20,
          color: Colors.black,
          overflow: TextOverflow.ellipsis
      ),
      headlineMedium:  const TextStyle(
          fontFamily: fontFamily,
          fontSize: 18,
          color: Colors.black,
          overflow: TextOverflow.ellipsis

      ),

      bodyLarge: const TextStyle(
          fontFamily: fontFamily,
          fontSize:16,
          color: Colors.black,
          overflow: TextOverflow.ellipsis

      ),
      bodyMedium:const TextStyle(
          fontFamily: fontFamily,
          fontSize: 14,
          color: Colors.black,
          overflow: TextOverflow.ellipsis

      ),
      bodySmall:const TextStyle(
          fontFamily: fontFamily,
          fontSize: 12,
          color: Colors.black,
          overflow: TextOverflow.ellipsis

      ),

      titleMedium: TextStyle(
          fontFamily:fontFamily,
          fontSize: 16,
          color: Colors.black.withOpacity(0.4),
          overflow: TextOverflow.ellipsis

      ),
      titleSmall: TextStyle(
          fontFamily:fontFamily,
          fontSize: 12,
          color: Colors.black.withOpacity(0.4),
          overflow: TextOverflow.ellipsis

      ),

    ),
    fontFamily: fontFamily,
    brightness: Brightness.light ,
    colorScheme:  const ColorScheme.light(
        background: Colors.white ,
        primary: Colors.black,

    )
);



