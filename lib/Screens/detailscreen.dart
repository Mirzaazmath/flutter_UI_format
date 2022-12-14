import 'package:flutter/material.dart';

import '../Widgets/appStrings.dart';
import '../Widgets/checklist.dart';
import '../Widgets/containerWidget.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title:Text(AppStrings().taskdetail,style: Theme.of(context).textTheme.headline1,),



      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings().uidashboard,style: Theme.of(context).textTheme.headline1,),
              const  SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: ContainerWidget(
                    radius: 10,
                    color: Theme.of(context).cardColor,
                    padding: EdgeInsets.all(10),
                  border: false,
                  width: 100,
                  height: 80,
                  child: Row(
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
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Icon(Icons.add),
                      )
                    ],
                  ),

                  )),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today,size: 17,color:Theme.of(context).primaryColor,),
                            const SizedBox(width: 10,),
                            Text(AppStrings().date,style:Theme.of(context).textTheme.headline4),
                          ],
                        ),
                        const  SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.alarm,size: 17,color:Theme.of(context).primaryColor),
                            const  SizedBox(width: 10,),
                            Text(AppStrings().time,style:Theme.of(context).textTheme.headline4),
                          ],
                        ),

                      ],
                    ),
                  ))
                ],
              ),


              const  SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,

                children: [
                  Text(AppStrings().attachment,style: Theme.of(context).textTheme.headline1,),
                  Text(AppStrings().seeAll,style: Theme.of(context).textTheme.headline6,)
                ],),
              const  SizedBox(height: 20,),
              Container(
                height: 80,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,

                    itemBuilder: (context,index){
                      return ContainerWidget(
                        radius: 15,
                        margin: const EdgeInsets.only(right: 20),
                        color: Theme.of(context).primaryColor,
                        padding:const EdgeInsets.all(5),
                        border: false,
                        width: 250,
                        height: 0,
                        child:ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).focusColor
                            ),
                            child: Icon(Icons.image,color: Theme.of(context).scaffoldBackgroundColor,),
                          ),
                          title: Text("Preview.zip",style: Theme.of(context).textTheme.headline5,),
                          subtitle: Text("13mb",style: Theme.of(context).textTheme.headline5,),

                        )
                      );
                    }),
              ),
              const SizedBox(height: 20,),
              Text(AppStrings().description,style: Theme.of(context).textTheme.headline1,),
              const SizedBox(height: 20,),
              Text(AppStrings().info,style: Theme.of(context).textTheme.headline4,),

              const SizedBox(height: 20,),
              CheckList("10 task Completed"),
              const SizedBox(height: 15,),
              CheckList("File add done"),
              const SizedBox(height: 15,),
              CheckList("Finishing with style guide"),





            ],
          ),
        ),
      ),
    );
  }
}
