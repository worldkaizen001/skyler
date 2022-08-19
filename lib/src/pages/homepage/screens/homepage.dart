part of'../homepage_page.dart';





class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // User? user = FirebaseAuth.instance.currentUser;
  // UserModel? loggedInUser = UserModel();
  // FirebaseAuth auth = FirebaseAuth.instance;

 

  @override
  void initState() {
    super.initState();
    // FirebaseFirestore.instance.collection("users").
    // doc(user?.uid).
    // get().
    // then((value) {
    //  loggedInUser  = UserModel.fromMap(value.data());
    //  print(value);
    //
    //   setState(() {
    //
    //   });
    // });

  }

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx,constraint){
      return Scaffold(

        drawer: Drawer(
          child: SafeArea(
            child: Column(
              children: const [
                Text('Name')
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Registration'),
        ),
        body: RefreshIndicator(
          color: Colors.red,
          onRefresh: () async{
            context.read<Hotels>().getHotelData();
          },
          child: Center(
            child: Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hey loggedInUser?.email",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w500),),
                  Text("Hey loggedInUser!.firstName",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w500),),

                  Text("It's a good day to go on a vacation.",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey.shade800),),
                  // const SizedBox(
                  //   width: 250,
                  //   child: GenericTextField(
                  //
                  //     obscure: false,
                  //     hintText: 'search',
                  //   ),
                  // ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //
                  //   children: [
                  //     Button(color: Colors.teal, title: 'Resorts', height: 0.052, width: 0.24, radius: 5, callback: (){}),
                  //     Button(color: Colors.teal, title: 'Flights', height: 0.052, width: 0.24, radius: 5, callback: (){}),
                  //     Button(color: Colors.teal, title: 'Resorts', height: 0.052, width: 0.24, radius: 5, callback: (){}),                      ],
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  Consumer<Hotels>(
                    builder: (context, value, child){

                      return value.map.length == 0 && !value.error?
                          const CircularProgressIndicator(): value.error?
                      Text('oops,something is wrong. ${value.errorMessage}') : ListView.builder(
                          itemBuilder: (context, index){
                            return  NewWidget(map: value.map[index],);
                          });
                    },


                  ),
                GestureDetector(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const TryScreen()));
                  },
                    child
                    : const Text('Try Scrren'))],
              ),
            ),
          ),

        ),
      );

    });

  }
}

class NewWidget extends StatelessWidget {
  Map <String,dynamic> map = {};


   NewWidget({required this.map,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 7,right: 7),


      height: 187,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(6),top:Radius.circular(6) )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:BorderRadius.circular(10),
              child: Image.asset('images/china.jpg',height: 100,width: 180,fit: BoxFit.cover,)),
          Padding(
            padding: const EdgeInsets.only(left: 2,right: 6,top: 12,bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                       Icon(Icons.star,size: 18,),
                        Text("4",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade800),),

                      ],
                    ),
                    Icon(Icons.favorite,size: 18,
                      color: Colors.red,
                      )
                  ],
                ),
                SizedBox(height: 5,),

                Text('${map['title']}',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                Text("${map['body']}",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.grey.shade800),),

                
              ],
            ),
          )



        ],
      ),

    );
  }
}
