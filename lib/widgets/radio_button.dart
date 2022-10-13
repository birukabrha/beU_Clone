import 'package:beu_clone/controllers/radio_controller.dart';
import 'package:beu_clone/models/radio_button_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioButtonWidget extends StatefulWidget {
  final List<RadioButtonModel>? options;
  final Function(int)? onItemSelected;

  const RadioButtonWidget({Key? key, this.options, this.onItemSelected})
      : super(key: key);

  @override
  createState() {
    return RadioButtonWidgetState();
  }
}

class RadioButtonWidgetState extends State<RadioButtonWidget> {
  RadioController radioController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: ListView.builder(
          // shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: widget.options!.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                if (index == 2) {
                  radioController.isSelected.value = true;
                } else {
                  radioController.isSelected.value = false;
                }
                setState(() {
                  for (var element in widget.options!) {
                    element.isSelected = false;
                  }
                  widget.options![index].isSelected = true;

                  widget.onItemSelected!(index);
                });
              },
              child: SquareRadioButtonItem(widget.options![index]),
            );
          },
        ),
      ),
    );
  }
}

class SquareRadioButtonItem extends StatelessWidget {
  final RadioButtonModel _item;

  const SquareRadioButtonItem(this._item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1.0),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 10),
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
          gradient: _item.isSelected
              ? const LinearGradient(colors: [Colors.orange, Colors.deepOrange])
              : const LinearGradient(colors: [Colors.white, Colors.white]),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 2,
              spreadRadius: 2,
            )
          ],
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Center(
          child: _item.radioWidget,
        ),
      ),
    );
  }
}
