import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Used to remove the debug banner
      home:TodoPage(),
    );
  }
}
class TodoPage extends StatefulWidget{
  const TodoPage({super.key});
  @override
  State<TodoPage> createState()=> _TodoPageState();

}
class _TodoPageState extends State<TodoPage> {
  // 1. Variable:To store the list of tasks
  List<String> toDoList=["Flutter Learning","Eat"];
  // 2. Controller:TextField se text lene ke liye
  TextEditingController myController=TextEditingController();

  //3. Function:Task add karne ke liye
  void addTask(){
    setState((){
      //List me naya text add karna
      toDoList.add(myController.text);
      //TextField ko clear karna
      myController.clear();
    });
  }
  //4. Function: task remove karna
  void deleteTask(int index){
    setState((){
      // Us index wale item ko list se hata dega
      toDoList.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.deepPurple[200],
      appBar:AppBar(
        title:const Text("My To-Do List"),
        backgroundColor:Colors.deepPurple,
        foregroundColor:Colors.white,
        ),
        // Body mein hum Column use karenge
        body:Column(
          children:[
            // Part A:List Dikhana(ListView.builder)
            Expanded(
              child:ListView.builder(
                itemCount:toDoList.length, //List mein kitne items hain?
                itemBuilder:(context,index) {
                  // Har item kaisa dikhega?
                  return Card(
                    margin:const EdgeInsets.symmetric(horizontal:20,vertical:10),
                    child:ListTile(
                      title:Text(toDoList[index]),
                      trailing:IconButton(
                        icon:const Icon(Icons.delete,color:Colors.red),
                        onPressed:(){
                          deleteTask(index);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),

            //Part B; Task Add karne Wala Area
            Padding(
              padding:const EdgeInsets.all(20.0),
              child:Row(
                children:[
                  //Input Field
                  Expanded(
                    child:TextField(
                      controller:myController, // Controller connect karna
                      decoration:const InputDecoration(
                        border:OutlineInputBorder(),
                        hintText:"Enter a new task",
                        filled:true,
                        fillColor:Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width:10),
                  // Add Button
                  ElevatedButton(
                    onPressed:addTask,// Button press par add task
                    style:ElevatedButton.styleFrom(
                      backgroundColor:Colors.deepPurple,
                      foregroundColor:Colors.white,
                      padding:const EdgeInsets.all(20),
                    ),
                    child:const Text("Add"),
                    ),
                ],
              ),
            ),
          ],),
      );
  }
}