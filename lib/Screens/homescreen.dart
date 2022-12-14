
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/appStrings.dart';
import '../Widgets/checklist.dart';
import '../Widgets/containerWidget.dart';
import 'detailscreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomAppBar(

        notchMargin: 6,
        shape:const CircularNotchedRectangle(),

        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: const [
            Padding(
              padding:  EdgeInsets.all(5),
              child: Icon(Icons.home_outlined),
            ),
            Padding(
              padding:EdgeInsets.all(5),
              child: Icon(Icons.file_copy_outlined),
            ),
             Opacity(opacity: 0,child: Icon(Icons.no_cell),),
            Padding(
              padding:  EdgeInsets.all(5),
              child: Icon(Icons.calendar_today_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.person_outline),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(AppStrings().userName,style: Theme.of(context).textTheme.headline1,),
          subtitle: Text(AppStrings().position),
        ),
        actions: [
          Container(
           padding:const  EdgeInsets.only(right: 10),
            child: Stack(
              children: [
                Icon(Icons.notifications_outlined,color:Theme.of(context).primaryColor,)
              ],
            ),
          )
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ContainerWidget(
                radius: 20, color: Theme.of(context).shadowColor,
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              border: false,
              width: double.infinity,
              height: 50,
              child: Text(AppStrings().search,style: Theme.of(context).textTheme.headline6,),


              ),
             const  SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,

                children: [
                Text(AppStrings().project,style: Theme.of(context).textTheme.headline1,),
                Text(AppStrings().seeAll,style: Theme.of(context).textTheme.headline6,)
              ],),
              const  SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Text(AppStrings().inProgress,style: Theme.of(context).textTheme.headline6,),
                  Text(AppStrings().todo,style: Theme.of(context).textTheme.headline6,),
                  Text(AppStrings().done,style: Theme.of(context).textTheme.headline6,),
                  Text(AppStrings().upcommig,style: Theme.of(context).textTheme.headline6,),

                ],
              ),
              const  SizedBox(height: 20,),
              Container(
                height: 175,
                child: ListView.builder(
                  itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,

                    itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DetailScreen()));
                    },
                    child: ContainerWidget(
                      radius: 30,
                      margin: const EdgeInsets.only(right: 20),
                      color:index.isEven? Theme.of(context).primaryColor:Theme.of(context).cardColor,
                      padding:const EdgeInsets.all(20),
                      border: false,
                      width: 250,
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppStrings().uidashboard,style:index.isEven? Theme.of(context).textTheme.headline2:Theme.of(context).textTheme.headline1,),
                          const  SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(child: Container(
                                child: Stack(
                                  children:const  [
                                    CircleAvatar(
                                      backgroundImage: AssetImage("assets/image1.jpeg"),
                                    ),
                                    Positioned(
                                      left:22,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage("assets/image2.jpeg"),
                                    )),
                                    Positioned(
                                        left:45,
                                        child: CircleAvatar(
                                      backgroundImage: AssetImage("assets/image3.jpeg"),
                                    )),
                                    // Positioned(
                                    //     left:37,child: CircleAvatar(
                                    //   backgroundImage: AssetImage("assets/image4.jpeg"),
                                    // ))
                                  ],
                                ),
                              )),
                              Expanded(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_today,size: 17,color: index.isEven?Theme.of(context).scaffoldBackgroundColor:Theme.of(context).primaryColor,),
                                     const SizedBox(width: 10,),
                                      Text(AppStrings().date,style: index.isEven?Theme.of(context).textTheme.headline5:Theme.of(context).textTheme.headline4),
                                    ],
                                  ),
                                  const  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.alarm,size: 17,color: index.isEven?Theme.of(context).scaffoldBackgroundColor:Theme.of(context).primaryColor),
                                     const  SizedBox(width: 10,),
                                      Text(AppStrings().time,style:index.isEven?Theme.of(context).textTheme.headline5:Theme.of(context).textTheme.headline4),
                                    ],
                                  ),


                                ],
                              )),
                            ],
                          ),
                          const  SizedBox(height: 20,),
                          ClipRRect(
                            borderRadius:const  BorderRadius.all(Radius.circular(10)),
                            child: LinearProgressIndicator(
                              value: 0.76,
                              minHeight: 10,
                              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                              color: Theme.of(context).focusColor,
                            ),
                          ),
                         const  SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,

                            children: [
                              Text(AppStrings().inProgress,style:index.isEven?Theme.of(context).textTheme.headline5:Theme.of(context).textTheme.headline4),
                              Text("88%",style:index.isEven?Theme.of(context).textTheme.headline5:Theme.of(context).textTheme.headline4)
                            ],),
                        ],
                      ),),
                  );
                }),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,

                children: [
                  Text(AppStrings().myDailytask,style: Theme.of(context).textTheme.headline1,),
                  Text(AppStrings().edit,style: Theme.of(context).textTheme.headline6,)
                ],),
              const SizedBox(height: 20,),
              CheckList("Sketching logo and coloring"),
              const SizedBox(height: 15,),
              CheckList("Landing page design"),
              const SizedBox(height: 15,),
              CheckList("UI Kit design"),

              




            ],
          ),
        ),
      ),


    );

  }
}