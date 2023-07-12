import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LogbookFormScreen extends StatefulWidget {
  const LogbookFormScreen({super.key});

  @override
  State<LogbookFormScreen> createState() => _LogbookFormScreenState();
}

class _LogbookFormScreenState extends State<LogbookFormScreen> {
  TextEditingController _controllerTgl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controllerTgl.text = DateFormat('yyyy-MM-dd').format(DateTime.now()
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*Text(
                  "Tanggal",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffA8FD86),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _controllerTgl,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.datetime,
                      enabled: false,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15
                      ),
                    ),
                  ),
                ),*/
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Absen Woy !!! wkkwkw",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextButton(
                          onPressed: () => {

                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15.0)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                            elevation: MaterialStateProperty.all<double>(5.0),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          ),
                          child: Text(
                            "Masuk",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold
                            ),
                          )
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mulai",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: const Color(0xffA8FD86),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "8.00"
                              ),
                              keyboardType: TextInputType.datetime,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sampai",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: const Color(0xffA8FD86),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "16.00"
                              ),
                              keyboardType: TextInputType.datetime,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Log Book",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8FD86),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                      ),
                      maxLength: null,
                      maxLines: null,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
