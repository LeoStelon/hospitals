import 'package:flutter/material.dart';

class CustomAppBarComponent extends PreferredSize {
  final Function toggleDrawer;
  CustomAppBarComponent({
    @required this.toggleDrawer,
  });

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Color(0xff354052),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              margin: EdgeInsets.all(4),
              child: Image(
                image: AssetImage('images/logo.png'),
                width: 80,
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Navi Mumbai Municipal Corporation',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'COVID-19',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      IconButton(
                        onPressed: toggleDrawer,
                        icon: Icon(
                          Icons.menu,
                          size: 32,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
