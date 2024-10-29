import 'package:flutter/material.dart';
import 'package:flutter_rent_moto/widgets/modals/calendar_rental.dart';
import 'package:intl/intl.dart';

class RentHomeSearchMotos extends StatefulWidget {
  const RentHomeSearchMotos({super.key});

  @override
  State<RentHomeSearchMotos> createState() => _RentHomeSearchMotosState();
}

class _RentHomeSearchMotosState extends State<RentHomeSearchMotos> {
  // Khai báo các biến DateTime cho giờ nhận và giờ trả
  late DateTime pickupDateTime;
  late DateTime returnDateTime;

  // Khai báo TextEditingController để gán chuỗi hiển thị
  final TextEditingController rentalPeriodController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Đặt giá trị giờ nhận là 21:00 hôm nay và giờ trả là 22:00 hôm nay
    pickupDateTime = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      21, // Giờ nhận
      0, // Phút
    );
    returnDateTime = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      22, // Giờ trả
      0, // Phút
    );

    // Định dạng chuỗi theo mẫu yêu cầu và gán vào rentalPeriodController
    rentalPeriodController.text =
        "${DateFormat('HH:mm, dd/MM/yyyy').format(pickupDateTime)} - ${DateFormat('HH:mm, dd/MM/yyyy').format(returnDateTime)}";
    print(rentalPeriodController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      left: 20,
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(2, 2),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                color: Color.fromARGB(255, 254, 180, 42),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.motorcycle_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Self-driving motorbikes",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black54,
                          width: 0.8,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.black54,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Location',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 12),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 7, left: 12),
                          height: 20,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText:
                                  'Enter the location where you want to rent a motorbike',
                              hintStyle: TextStyle(
                                  fontSize: 12, color: Colors.black87),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                            readOnly: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.black54,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Rental period',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 12),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 7, left: 12),
                          height: 20,
                          child: TextButton(
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BookingScreen(),
                                ),
                              )
                            },
                            child: TextFormField(
                              controller:
                                  rentalPeriodController, // Gán giá trị đã định dạng
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                              readOnly: true,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 330,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFAD15),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
