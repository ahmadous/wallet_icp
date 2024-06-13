import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:wallet_icp/Controller/controller.dart';
import 'package:wallet_icp/Page/widgets/widget.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}
bool all=false;

class _PortfolioState extends State<Portfolio> {
  final myController c= Get.put(myController());

  final controller=Get.put(NavbarController());
  @override
  Widget build(BuildContext context) {
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
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(50)
                        ),),
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
                        child:  Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Total wallet balance",style: TextStyle(color: Colors.white54,fontSize: 15),),
                                Row(
                                  children: [
                                    Text("${c.coin}",style: const TextStyle(color: Colors.white),),
                                    DropdownButton(                                                               enableFeedback: true,
                                        items: const[
                                         DropdownMenuItem(child: Text("USD"),value: "USD"),
                                         DropdownMenuItem(child: Text("Dinard"),value: "Dinard",),
                                         DropdownMenuItem(child: Text("Euro"),value: "Euro"),
                                         DropdownMenuItem(child: Text("FCFA"),value: "FCFA"),
                                       ], onChanged: (value){
                                        setState(() {
                                        c.coin.value=value!;
                                    
                                        });
                                       }),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("${c.price}",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                Text("${c.coin}",style: TextStyle(color: Colors.white),)
                              ],
                            ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Profit this month",style: TextStyle(color: Colors.white54),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("\$25.09 ",style: TextStyle(color: Colors.white54),),
                                      Text("+10",style: TextStyle(color: Colors.white54),),
                                      Icon(CupertinoIcons.arrow_up_right,color: Colors.white54,)
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.stacked_line_chart_rounded,size: 50,color: Colors.white12,)
                           ],
                         )
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
        children: [
         Container(
              margin: marginheight,
              padding: paddingheight,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               TextButton(onPressed: ()=>Get.to(Portfolio()), child: const Text("Portfolio",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
               TextButton(onPressed: (){
            showDialog(context: context, builder: (context){
              return Container(
                child: Column(
                  children: [
                    Text("this fonctionality is not yet")
                  ],
                ),
              );
            });
               }, child: const Text("+ Add Currency",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w800),)),
             ],
            )
          ),
          Column(
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
                
                margin: marginheight,
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
                          color:  Colors.amber,
                          borderRadius: BorderRadius.circular(50)),

                        child: const Icon(Icons.currency_bitcoin)),
                        const Column(
                          children:  [
                              Text("Bitcoin",style: TextStyle(color: Colors.black45),),
                          Text("0.235 BTC",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          ],
                        ),
                         Icon(Icons.currency_bitcoin,color: Colors.grey.shade300,size: 30,)
                      ],
                    ),
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
                  
               margin: marginheight,
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

                        child:const Icon(Icons.currency_franc)),
                       const Column(
                          children: [
                            Text("Franc",style: TextStyle(color: Colors.black45),),
                        Text("2.89 Y",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Icon(Icons.currency_franc,color: Colors.grey.shade300,size: 30,)
                      ],
                    ),
                  ],
                ),),)
              ],
            ),
      
          Column(
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
                
                margin: marginheight,
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
                       const Column(
                          children: [
                            Text("Pound",style: TextStyle(color: Colors.black45),),
                        Text("26.89 pd",style:const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          ],
                        ),
                         Icon(Icons.currency_pound,color: Colors.grey.shade300,size: 30,)
                      ],
                    ),
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
                  
               margin: marginheight,
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
                       const Column(
                          children: [
                            Text("lira",style: TextStyle(color: Colors.black45),),
                        Text("0.89 lr",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Icon(Icons.currency_lira,color: Colors.grey.shade300,size: 30,)
                      ],
                    ),
                  ],
                ),),)
              ],
            ),
      
        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.black45,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: [
              _bottomNavigationBar(Icons.home, "Home"),
              _bottomNavigationBar(Icons.payment, "Portfolio"),
              _bottomNavigationBar(Icons.currency_exchange, "Currency"),
              _bottomNavigationBar(Icons.settings, "settings"),
              _bottomNavigationBar(Icons.person, "profile"),
          ]),
    );
  }
}

_bottomNavigationBar (IconData icon,String label){
  return BottomNavigationBarItem(icon: Icon(icon,),label: label);
}