import 'package:flutter/material.dart';
import 'package:monghoangcung/components/loaddatajson/question_obj.dart';

class contacttab extends StatefulWidget {
  const contacttab({super.key});

  @override
  State<StatefulWidget> createState() {
    return contacttabstate();
  }
}

class contacttabstate extends State<contacttab> {
  //bo sung 6
  String name = "";
  List<questionobject> lscontact = [];

  get userprovider => null;

  void _loaddanhsachcontact() async {
    final data = await userprovider.searchusers(1);
    setState(() {
      lscontact = data;
    });
  }

  Future<void> _searchcontact() async {
    final data = await userprovider.searchusers(1);
    setState(() {
      lscontact = data;
    });
  }

  @override
  void initState() {
    super.initState();
    _loaddanhsachcontact();
  }

  @override
  Widget build(BuildContext context) {
    // bo sung khi co du lieu
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 2, color: Colors.amber)),
                  height: MediaQuery.of(context).size.height / 10,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height / 3,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Tìm Kiếm',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none),
                      onTap: () {
                        showSearch(
                                context: context,
                                delegate: CustomSearch(alldata: lscontact))
                            .then((value) => _loaddanhsachcontact());
                      },
                      onChanged: (value) {
                        name = value;
                      },
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.amber)),
                height: MediaQuery.of(context).size.height / 1.5,
                child: ListView.builder(
                  itemCount: lscontact.length,
                  itemBuilder: (context, index) => Card(
                      child: ListTile(
                    leading: CircleAvatar(
                        child: Text(
                            '${lscontact[index].name.substring(0, 1).toUpperCase()}')),
                    title: Text('${lscontact[index].name}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(lscontact[index].username),
                        Text(lscontact[index].name),
                        Text(lscontact[index].birthday),
                        Text(lscontact[index].password),
                      ],
                    ),
                    onTap: () {},
                  )),
                ),
              )
            ],
          )),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<questionobject> alldata = [];
  CustomSearch({required this.alldata});
  @override

  //xoa
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  // quay lai
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  //load
  Widget buildSuggestions(BuildContext context) {
    List<questionobject> matchquery = [];
    for (var item in alldata) {
      if (item.name.toLowerCase().contains(query.toLowerCase()) ||
          item.username.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchquery.length,
        itemBuilder: (context, index) {
          var result = matchquery[index];
          return ListTile(
              leading: CircleAvatar(
                  child: Text(
                      '${matchquery[index].name.substring(0, 1).toUpperCase()}')),
              title: Text('${matchquery[index].name}'),
              subtitle: Text(matchquery[index].username));
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
}
