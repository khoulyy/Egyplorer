import 'package:flutter/material.dart';
import 'package:project/Screens/StartPG2Screen.dart';
import 'package:project/constants/keys.dart';


class StartPage1Screen extends StatelessWidget {
  const StartPage1Screen({super.key});
static String id='StartPage1Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 1,),
            Image.asset(kStartPage1photo),
      const SizedBox(height: 50  ,),
      
        const Text('Make your own private ' ,style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold
         ),),
           const Text('excursion plan', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
           const SizedBox(height:25 ,),
           const Text('Formulate your strategy to receive ' ),
          const  SizedBox(height: 3,),
           const Text('wonderful gift packs'),
           const SizedBox(height: 30,),
            Container(
              height: 60,
              width: 60,
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const StartPage2Screen();
                      } ));
                    },
                    icon: const Icon(
                      Icons.navigate_next_rounded,
                      color: Colors.white,
                    ))),
                   const Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
