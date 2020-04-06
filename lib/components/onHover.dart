import 'package:flutter/material.dart';
import 'dart:html' as html;

extension PointerExtensions on Widget{

  static final appContainer =
  html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      // When the mouse enters the widget set the cursor to pointer
      onHover: (event) {
        appContainer.style.cursor = 'pointer';
      },
      // When it exits set it back to default
      onExit: (event) {
        appContainer.style.cursor = 'default';
      },
    );
  }
}


extension HoverExtensions on Widget{

  static final appContainer =
  html.window.document.getElementById('app-container');



  Widget onHoverMouse(Function v,Function b) {
    return MouseRegion(
      child: this,
      // When the mouse enters the widget set the cursor to pointer
      onHover: (event) {
        appContainer.style.cursor = 'pointer';
        v();
      },
      // When it exits set it back to default
      onExit: (event) {
        appContainer.style.cursor = 'default';
        b();
      },
    );
  }
}