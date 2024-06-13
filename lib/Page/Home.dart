import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:wallet_icp/Controller/controller.dart';
import 'package:wallet_icp/Page/Portfolio.dart';
import 'package:wallet_icp/Page/currency.dart';
import 'package:wallet_icp/Page/widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
  bool isShow=false;
  bool all=false;
class _HomeState extends State<Home> {
    final myController c= Get.put(myController());

  final controller=Get.put(NavbarController());
  @override
  Widget build(BuildContext context) {
    // final currency=Provider.of<changeCurrency>(context).currency;
  // int a=0;
      return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 350),
        child: Container(
          height: 350,
          decoration:const BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
          ),
          child: Container(
            height: 400,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top:20,left: 10,right: 10,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(20),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(50)
                        ),
                        ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(20),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)
                        ),
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add_outlined)),
                        ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:[
                        Container(
                          height: 170,
                        width: 350,
                        margin: const EdgeInsets.only(top:40,left: 20,right: 20,bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:Colore[0],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const Text("Stack your Bitcoin\nand enter our BTC\nPrice Pool",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20),),
                          TextButton(onPressed: ()=>Get.to(const Currency()), child:const Text("Learn more",style: TextStyle(color: Colors.white54),)),
                          ],
                        ),
                      ),
                        Container(
                          height: 170,
                        width: 350,
                        margin: const EdgeInsets.only(top:40,left: 20,right: 20,bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:Colore[1],
                        ),
                        child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const Text("Stack your Bitcoin\nand enter our BTC\nPrice Pool",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20),),
                          TextButton(onPressed: ()=>Get.to(const Currency()), child:const Text("Learn more",style: TextStyle(color: Colors.white54),)),
                          ],
                        ),
                      ),
                        Container(
                          height: 170,
                        width: 350,
                        margin: const EdgeInsets.only(top:40,left: 20,right: 20,bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:Colore[2],
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const Text("Stack your Bitcoin\nand enter our BTC\nPrice Pool",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20),),
                          TextButton(onPressed: ()=>Get.to(const Currency()), child:const Text("Learn more",style: TextStyle(color: Colors.white54),)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: marginheight,
            padding:paddingheight,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.verified,color: Colors.red,size: 30,),
                Column(
                  children: [
                    Text("Kindly verify your identity to unlock\nall the featurea of the app",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: marginheight,
            padding: paddingheight,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        const Text("Portfolio Balance:",),
                          IconButton(onPressed: (){
                            setState(() {
                              isShow=!isShow;
                            });
                          }, icon: Icon((isShow)?CupertinoIcons.eye:CupertinoIcons.eye_slash,color: Colors.black45,))
                        ],
                      ),
                    (isShow==true)?Row(
                        children: [
                          const Text("0.00"),
                          Obx(()=>Text("${c.coin}")),
                          // (currency=="USD")?Text("\$"):SizedBox(width: 100,child: Text(currency),),
                        ],
                      ):Container()
                    ],
                  ),
                  Row(
                  children:[
                      const Text("Choice currency 👉:"),
                        DropdownButton(
                          value: "${c.coin}",
                          enableFeedback: true,
                          items:const [
                            DropdownMenuItem(child: Text("USD"),value: "USD"),
                            DropdownMenuItem(child: Text("Dinard"),value: "Dinard",),
                            DropdownMenuItem(child: Text("Euro"),value: "Euro"),
                            DropdownMenuItem(child: Text("FCFA"),value: "FCFA"),
                          ], onChanged: (value){
                          setState(() {
                          c.coin.value=value!;
                          }
                        );
                      }
                     )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: marginheight,
            padding: paddingheight,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 240, 241),
                    borderRadius: BorderRadius.circular(50)),
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.sell,color: Color.fromARGB(255, 65, 164, 210)))),
                const Text("Buy/Sell")
              ],),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 240, 241),
                    borderRadius: BorderRadius.circular(50)),
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.send_sharp,color: Color.fromARGB(255, 65, 164, 210),))),
                const Text("Send")
              ],),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 240, 241),
                    borderRadius: BorderRadius.circular(50)),
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.call_received,color: Color.fromARGB(255, 65, 164, 210)))),
                const Text("Receiver")
              ],),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 240, 241),
                    borderRadius: BorderRadius.circular(50)),
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.payment,color: Color.fromARGB(255, 65, 164, 210)))),
                const Text("Pay")
              ],),
            ],),
          ),
          Container(
            margin: marginheight,
            padding: paddingheight,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){
                controller.tabIndex=1;
                Get.to(Portfolio());
              }, child: const Text("Portfolio",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
              TextButton(onPressed: (){
                setState(() {
                  all=!all;
                });
              }, child: (all)? Text("view all",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w500),):Text("view less",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w500),)),
              
            ],
          )),
          (all==false||all==true)?SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: paddingheight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade600,blurRadius: 0.2,spreadRadius: 0.6),
                      BoxShadow(color: Colors.grey.shade600,blurRadius: 0.2,spreadRadius: 0.6),
                    ]
                  ),
                  height: 150,
                  width: 200,
                child: TextButton(onPressed: (){},child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(50)),

                        child: const Icon(Icons.currency_bitcoin)),
                         Icon(Icons.currency_bitcoin,color: Colors.grey.shade300,size: 30,)
                      ],
                    ),
                   const  Text("Bitcoin",style: TextStyle(color: Colors.black45),),
                    Text("260.89 ${c.coin}",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),),
                ),
                Container(
                  padding: paddingheight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade600,blurRadius: 0.2,spreadRadius: 0.6),
                      BoxShadow(color: Colors.grey.shade600,blurRadius: 0.2,spreadRadius: 0.6),
                    ]
                  ),
                  height: 150,
                width: 200,
                 child: TextButton(onPressed: (){},child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),

                        child: const Icon(Icons.currency_franc)),
                         Icon(Icons.currency_franc,color: Colors.grey.shade300,size: 30,)
                      ],
                    ),
                  const Text("FRANC",style: TextStyle(color: Colors.black45),),
                    Text("260.89 ${c.coin}",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),),)
              ],
            ),
          ):Container(),
       all==true? SizedBox(height: 8,):Container(),
        all==true?  SingleChildScrollView(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: paddingheight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade600,blurRadius: 0.2,spreadRadius: 0.6),
                      BoxShadow(color: Colors.grey.shade600,blurRadius: 0.2,spreadRadius: 0.6),
                    ]
                  ),
                  height: 150,
                  width: 200,
                child: TextButton(onPressed: (){},child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 59, 180),
                          borderRadius: BorderRadius.circular(50)),

                        child: const Icon(Icons.currency_pound)),
                         Icon(Icons.currency_pound,color: Colors.grey.shade300,size: 30,)
                      ],
                    ),
                   const  Text("Pound",style: TextStyle(color: Colors.black45),),
                    Text("260.89 ${c.coin}",style:const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),),
                ),
                Container(
                  padding: paddingheight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade600,blurRadius: 0.2,spreadRadius: 0.6),
                      BoxShadow(color: Colors.grey.shade600,blurRadius: 0.2,spreadRadius: 0.6),
                    ]
                  ),
                  height: 150,
                width: 200,
                 child: TextButton(onPressed: (){},child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 76, 175, 173),
                          borderRadius: BorderRadius.circular(50)),

                        child:const Icon(Icons.currency_lira)),
                        Icon(Icons.currency_lira,color: Colors.grey.shade300,size: 30,)
                      ],
                    ),
                   const Text("lira",style: TextStyle(color: Colors.black45),),
                    Text("260.89 ${c.coin}",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),),)
              ],
            ),
          ):Container()
        ],
      ),
    );
  }
}