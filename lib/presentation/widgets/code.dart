Container(
width: MediaQuery.of(context).size.width,
height: MediaQuery.of(context).size.height / 2,
padding: EdgeInsets.only(bottom: 20),
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
NeumorphicButton(
padding: const EdgeInsets.all(50.0),
style: NeumorphicStyle(
shadowDarkColor: Colors.grey.shade600,
lightSource: LightSource.bottomRight,
color: Colors.blue.shade300,
shape: NeumorphicShape.flat,
boxShape: NeumorphicBoxShape.roundRect(
BorderRadius.circular(100)),
),
onPressed: () {
print('bcg pressed');
},
child: NeumorphicText(
'BCG',
textStyle: NeumorphicTextStyle(
fontSize: 20,
),
style: NeumorphicStyle(
depth: 2,
shadowDarkColor: Colors.black,
color: Colors.white),
),
),
Container(
width: 150,
height: 150,
// width: MediaQuery.of(context).size.width,
child: NeumorphicButton(
padding: const EdgeInsets.all(50.0),
style: NeumorphicStyle(
shadowDarkColor: Colors.grey.shade600,
lightSource: LightSource.bottomRight,
color: Colors.blue.shade300,
shape: NeumorphicShape.flat,
boxShape: NeumorphicBoxShape.roundRect(
BorderRadius.circular(100)),
),
onPressed: () {
print('bcg pressed');
},
child: NeumorphicText(
'Pertussis',
textStyle: NeumorphicTextStyle(
fontSize: 20,
),
style: NeumorphicStyle(
depth: 2,
shadowDarkColor: Colors.black,
color: Colors.white),
),
),
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
NeumorphicButton(
padding: const EdgeInsets.all(50.0),
style: NeumorphicStyle(
shadowDarkColor: Colors.grey.shade600,
lightSource: LightSource.bottomRight,
color: Colors.blue.shade300,
shape: NeumorphicShape.flat,
boxShape: NeumorphicBoxShape.roundRect(
BorderRadius.circular(100)),
),
onPressed: () {
print('bcg pressed');
},
child: NeumorphicText(
'Diphtheria',
textStyle: NeumorphicTextStyle(
fontSize: 20,
),
style: NeumorphicStyle(
depth: 2,
shadowDarkColor: Colors.black,
color: Colors.white),
),
),
NeumorphicButton(
padding: const EdgeInsets.all(50.0),
style: NeumorphicStyle(
shadowDarkColor: Colors.grey.shade600,
lightSource: LightSource.bottomRight,
color: Colors.blue.shade300,
shape: NeumorphicShape.flat,
boxShape: NeumorphicBoxShape.roundRect(
BorderRadius.circular(100)),
),
onPressed: () {
print('bcg pressed');
},
child: NeumorphicText(
'Hepatitis B',
textStyle: NeumorphicTextStyle(
fontSize: 20,
),
style: NeumorphicStyle(
depth: 2,
shadowDarkColor: Colors.black,
color: Colors.white),
),
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
NeumorphicButton(
padding: const EdgeInsets.all(50.0),
style: NeumorphicStyle(
shadowDarkColor: Colors.grey.shade600,
lightSource: LightSource.bottomRight,
color: Colors.blue.shade300,
shape: NeumorphicShape.flat,
boxShape: NeumorphicBoxShape.roundRect(
BorderRadius.circular(100)),
),
onPressed: () {
print('bcg pressed');
},
child: NeumorphicText(
'Tetanus',
textStyle: NeumorphicTextStyle(
fontSize: 20,
),
style: NeumorphicStyle(
depth: 2,
shadowDarkColor: Colors.black,
color: Colors.white),
),
),
NeumorphicButton(

padding: const EdgeInsets.all(50.0),
style: NeumorphicStyle(
shadowDarkColor: Colors.grey.shade600,
lightSource: LightSource.bottomRight,
color: Colors.blue.shade300,

shape: NeumorphicShape.flat,
boxShape: NeumorphicBoxShape.roundRect(
BorderRadius.circular(100)),
),
onPressed: () {
print('bcg pressed');
},
child: NeumorphicText(
'Polio',
textStyle: NeumorphicTextStyle(
fontSize: 20,
),
style: NeumorphicStyle(
depth: 2,
shadowDarkColor: Colors.black,
color: Colors.white),
),
),
],
)
],
),
),