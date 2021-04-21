import 'package:flutter/material.dart';

import 'package:kids_care/presentation/widgets/bottom_navigation.dart';
import 'drawer_data.dart';


class HomeForm extends StatefulWidget {
 const  HomeForm({Key key}) : super(key: key);

  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm>
    with SingleTickerProviderStateMixin {
  // Animation Controller
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  _toggleAnimation() {
    _animationController.isDismissed
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rightSlide = MediaQuery.of(context).size.width * 0.6;
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context,child){
        double slide = rightSlide*_animationController.value;
        double scale = 1-(_animationController.value*0.3);
        return Stack(
          children: [
            Scaffold(
              backgroundColor: Colors.blue.shade300,
              body:const DrawerData(),
            ),
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.center,
              child: Scaffold(
                backgroundColor:Colors.white,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(200),
                  child: Container(
                    color:Colors.pink.shade300,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: ()=>_toggleAnimation(),
                            icon: AnimatedIcon(
                              icon: AnimatedIcons.menu_close,
                              color: Colors.white,
                              progress: _animationController,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 24,bottom: 12),
                            child: Text('Kids Care',style:TextStyle(color: Colors.white,fontSize:40)),
                          ),
                          const Text('Getting your kids vaccinated and \nprotecting there bright future',
                            style: TextStyle(
                                fontSize: 17,
                                fontStyle: FontStyle.italic,
                                color:Colors.white,
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),
                body:BottomNavigation(),
              ),
            )
          ],
        );
      },
    );
  }
}
