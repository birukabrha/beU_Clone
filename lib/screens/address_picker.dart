import 'package:beu_clone/controllers/radio_controller.dart';
import 'package:beu_clone/models/radio_button_model.dart';
import 'package:beu_clone/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressPicker extends StatefulWidget {
  const AddressPicker({Key? key}) : super(key: key);

  @override
  State<AddressPicker> createState() => _AddressPickerState();
}

class _AddressPickerState extends State<AddressPicker> {
  List<RadioButtonModel> radioOptions = [];
  var radioController = Get.put(RadioController());

  @override
  void initState() {
    super.initState();
    radioOptions.add(RadioButtonModel(
        true,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.home_filled,
            ),
            Text(
              'Home',
            ),
          ],
        )));
    radioOptions.add(RadioButtonModel(
        false,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(Icons.work_outline_outlined),
            Text(
              'Office',
            ),
          ],
        )));
    radioOptions.add(RadioButtonModel(
        false,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.flag_outlined,
            ),
            Text(
              'Others',
            ),
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.chevron_left_outlined,
            color: Colors.black,
            size: 40,
          ),
        ),
        title: const Text(
          'Add New Address',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(color: Colors.deepOrange.shade400, width: 2),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: Image.network(
                        'https://www.google.com/maps/vt/data=qzvTpT1qeJf6EXYO8Uhl-SihlEO4LUPwPVHk4YHQx6XMfm7FqO5ZYseqPgawLRzag2bCh3rD86fiv-KNo0FaJPQrVM_2EspBzCP9diQEq88HsgKxUsZdMxc89Zfp4BKnoxNg1NFtSk9U8W2-nfEfzXQVmrtwrfjTEdRATzNxg72XEn8UQH53w4Rxya7zbGweS7r7yCDsJfhSFvSy2UD5E6qpxd9ZT7_O6NgVX17NhR2wjtHxfTdPm_c2VHGMYg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 25),
                        child: const Icon(
                          Icons.location_on_sharp,
                          color: Colors.deepOrange,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Add the location correctly',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 20),
                child: Text(
                  'Label As',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
              ),
              RadioButtonWidget(
                options: radioOptions,
                onItemSelected: (index) {},
              ),
              Obx(
                () => Visibility(
                  visible: radioController.isSelected.value,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 0, top: 20),
                    width: MediaQuery.of(context).size.width * .9,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 20),
                        hintText: 'Label As',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500, fontSize: 14),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
                child: Text(
                  'Devlivery Address',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width * .9,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    hintText: 'Address',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Text(
                  'Contact Person Name',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width * .9,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    hintText: 'Name',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 20),
                child: Text(
                  'Contact Person Number',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width * .9,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    hintText: 'Number',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 20,
            bottom: 10,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * .9,
                height: 35,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.orangeAccent, Colors.deepOrange]),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    primary: Colors.transparent,
                    onPrimary: Colors.white,
                    maximumSize:
                        Size(MediaQuery.of(context).size.width * .9, 35),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * .9, 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Save Location',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
