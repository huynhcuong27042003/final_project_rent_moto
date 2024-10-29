import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectRentReturnDayForm extends StatefulWidget {
  final Function(String, String) onSave; // Callback for save action

  const SelectRentReturnDayForm({super.key, required this.onSave});

  @override
  State<SelectRentReturnDayForm> createState() =>
      _SelectRentReturnDayFormState();
}

class _SelectRentReturnDayFormState extends State<SelectRentReturnDayForm> {
  final TextEditingController pickupController = TextEditingController();
  final TextEditingController returnController = TextEditingController();

  final List<String> times = List.generate(
    48,
    (index) => '${index ~/ 2}:${index % 2 == 0 ? '00' : '30'}',
  );

  int selectedPickupIndex = 0;
  int selectedReturnIndex = 0;

  @override
  void initState() {
    super.initState();
    pickupController.text = times[selectedPickupIndex];
    returnController.text = times[selectedReturnIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 40,
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.cancel_outlined,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      'Rental moto',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 100,
                      child: CupertinoPicker(
                        itemExtent: 32,
                        scrollController: FixedExtentScrollController(
                            initialItem: selectedPickupIndex),
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedPickupIndex = index;
                            pickupController.text = times[index];
                          });
                        },
                        children: times
                            .map((time) => Center(child: Text(time)))
                            .toList(),
                      ),
                    ),
                    Visibility(
                      visible: false,
                      child: TextField(
                        controller: pickupController,
                        readOnly: true,
                        textAlign: TextAlign.center,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      'Return moto',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 100,
                      child: CupertinoPicker(
                        itemExtent: 32,
                        scrollController: FixedExtentScrollController(
                            initialItem: selectedReturnIndex),
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedReturnIndex = index;
                            returnController.text = times[index];
                          });
                        },
                        children: times
                            .map((time) => Center(child: Text(time)))
                            .toList(),
                      ),
                    ),
                    Visibility(
                      visible: false,
                      child: TextField(
                        controller: returnController,
                        readOnly: true,
                        textAlign: TextAlign.center,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 40,
            width: 450,
            decoration: const BoxDecoration(
              color: Color(0xFFFFAD15),
            ),
            child: TextButton(
              onPressed: () {
                // Handle save action and call the onSave callback
                String pickupTime = pickupController.text;
                String returnTime = returnController.text;
                print('$pickupTime + $returnTime');
                widget.onSave(pickupTime, returnTime);
              },
              child: const Text(
                'Lưu',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
