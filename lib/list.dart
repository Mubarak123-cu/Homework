import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => MyListState();
}

class MyListState extends State<MyList> {
  List<String> students = ["Ali", "Ahmed", "mazan"];
  TextEditingController input = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: input,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 5))),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(const Color.fromRGBO(31, 15, 177, 1))),
              onPressed: () {
                setState(() {});
                if (input.text.isNotEmpty)
                  students.add(input.text);
                else {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      child: Container(
                        height: 100,
                        width: 200,
                        child: Row(
                          children: [Text("data")],
                        ),
                      ),
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      dismissDirection: DismissDirection.horizontal,
                      
                      content: Text("enter the value")));
                }
              },
              child: Text("add", style: TextStyle(color: Colors.white),)),
          Expanded(
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(3),
                      child: ListTile(
                        onTap: () {
                          input.text = students[index];
                        },
                        leading: InkWell(
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onTap: () {
                            setState(() {});
                            students.removeAt(index);
                          },
                        ),
                        trailing: TextButton(
                            onPressed: () {
                              setState(() {});
                              students[index] = input.text;
                              input.clear();
                            },
                            child: Icon(
                              Icons.update,
                              color: Colors.white,
                            )),
                        tileColor: Colors.teal,
                        contentPadding: EdgeInsets.all(8),
                        title: Text(
                          students[index],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
