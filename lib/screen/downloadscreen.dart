import 'package:apex_ui/helper/customswitch.dart';
import 'package:apex_ui/model/downloadmodel.dart';
import 'package:apex_ui/utils/color_resources.dart';
import 'package:flutter/material.dart';

class Downloadscreen extends StatefulWidget {
  const Downloadscreen({super.key});

  @override
  State<Downloadscreen> createState() => _DownloadscreenState();
}

class _DownloadscreenState extends State<Downloadscreen> {
  List<DownloadData> downloadDataList = [];

  @override
  void initState() {
    super.initState();

    // Add some dummy data
    for (int i = 1; i <= 6; i++) {
      downloadDataList.add(
        DownloadData(
          day: 'DAY $i',
          date: '01-Jan-2023', // Replace with actual date
          amount: '8am - 9pm',
          status: 'Non-Working',
          isWorking: true,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: ColorResources.themecolor,
              height: 120,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        'Download',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Row(),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 100,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: ColorResources.WHITE,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: downloadDataList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Checkbox(
                            value: downloadDataList[index].isSelected,
                            onChanged: (value) {
                              setState(() {
                                downloadDataList[index].isSelected = value!;
                              });
                            },
                          ),
                          title: Text(downloadDataList[index].day),
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Placed On: ',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(downloadDataList[index].date),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Amount: ',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(downloadDataList[index].amount),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Text('Status: '),
                                      downloadDataList[index].isWorking
                                          ? const Text('Working',
                                              style: TextStyle(
                                                  color: Colors.black))
                                          : const Text('Non-Working',
                                              style: TextStyle(
                                                  color: Colors.black)),
                                    ],
                                  ),
                                  CustomSwitchIcon(
                                    isWorking:
                                        downloadDataList[index].isWorking,
                                  ),
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 247, 207, 174)),
                            fixedSize:
                                MaterialStateProperty.all(const Size(160, 50)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.download),
                              SizedBox(width: 5),
                              Text('Download'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
