part of 'pages.dart';

class MainPage extends StatefulWidget {
  MainPage({@required this.username, @required this.password});

  final String username;
  final String password;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  toast(String message) {
    return Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.blue[200],
        textColor: Colors.white,
        fontSize: 15);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.centerLeft,
              colors: [
            Colors.lightBlue,
            Colors.white,
          ])),
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 30),
              Container(
                height: 200,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Stack(
                        fit: StackFit.loose,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/future.png'),
                                        fit: BoxFit.cover)),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 100, right: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 25,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: Text(
                    "Username : = ${widget.username}",
                    style: TextStyle(fontSize: 20),
                  )),
                  Center(
                      child: Text(
                    "Password : = ${widget.password}",
                    style: TextStyle(fontSize: 20),
                  )),
                  SizedBox(height: 20),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    clipBehavior: Clip.antiAlias,
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 22),
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                "Post",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "22",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                "Followers",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "765",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "125",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ),

                  RaisedButton(
                      shape: StadiumBorder(),
                      color: Colors.blue,
                      child: Text(
                        "Sign Out",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Get.back();
                        toast("Logout Success");
                      })
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

/*
Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text("Username anda = ${widget.username}")),
          Center(child: Text("Password anda = ${widget.password}")),
          RaisedButton(
              child: Text("Sign Out"),
              onPressed: () {
                Get.back();
                toast("Logout Success");
              })
        ],
      ),
*/
