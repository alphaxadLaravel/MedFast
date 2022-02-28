import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
            child: Column(
              children: [
                SizedBox(
                    height: size.height * 0.05,
                ),
              Image.asset('assets/images/ver.gif',
                 height: size.height * 0.35,
              ),
              SizedBox(
                    height: size.height * 0.02,
                ),
              const Text("Confirm Code!", 
              style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold ,color: Colors.black54,),),
              SizedBox(
                    height: size.height * 0.01,
                ),
              const Text("Ingiza Code namba uliyopokea Kutoka \nMedFAST hivi punde!", 
              style: TextStyle( fontSize: 14, color: Colors.black38, ),
              textAlign: TextAlign.center,
              ),

               SizedBox(
                    height: size.height * 0.02,
                ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        _textField(first: true, last: false),
                        _textField(first: true, last: false),
                        _textField(first: true, last: false),
                        _textField(first: true, last: false),
                    ],
                  ),
                   
                ],),
              ),
              buildTimer(),
              SizedBox(
                    height: size.height * 0.02,
                   ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))
                    )
                  ),
                  onPressed: (){
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder: (context) => const ClientLogin())
                    // );
                  },
                  child: const Padding(
                    padding: EdgeInsetsDirectional.all(14),
                    child:  Text('Confirm', style: TextStyle(fontSize: 16),),
                  ),
                ),
              ),
              SizedBox(
                    height: size.height * 0.02,
                ),
                TextButton(onPressed: (){}, child: const Text("Resend the Code", style: TextStyle(color: Colors.blueGrey),))
            ],),
            ),
        ),
    );
  }
  _textField({bool? first, last}){
    return SizedBox(
      height: 70,
      child: AspectRatio(aspectRatio: 0.6,
          child: TextField(
            autofocus: true,
            onChanged:  (value){

              if(value.length == 1 && last == false){
                FocusScope.of(context).nextFocus();
              }

              // ignore: prefer_is_empty
              if(value.length == 0 && first == false){
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counter: const Offstage(),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.lightBlueAccent),
                borderRadius: BorderRadius.circular(12)
              ),
            )
            
          ),
        ),

    );
  }

  
  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expire in ", style: TextStyle(color: Colors.black54),),
        TweenAnimationBuilder(
          tween: Tween(begin: 60, end: 0.0),
          duration: const Duration(seconds: 60),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(color: Colors.lightBlueAccent),
          ),
        ),

      ],
    );
  }
  }