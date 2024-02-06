import 'package:flutter/material.dart';

class SidebarMenu extends StatefulWidget {
  const SidebarMenu({super.key});

  @override
  State<SidebarMenu> createState() => _SidebarMenuState();
}

class _SidebarMenuState extends State<SidebarMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          'منو',
          style: TextStyle(fontFamily: "SB", fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.chevron_right_outlined,
                size: 30,
                color: Colors.grey[700],
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size(0, 0),
          child: Divider(
            color: Colors.grey[100],
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! first title
              const Text(
                'مدیریت سرویس',
                style: TextStyle(
                  fontFamily: 'SB',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(Icons.change_circle_outlined),
                  const SizedBox(width: 10),
                  Text(
                    "تغییر سرویس",
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[200],
                indent: 35,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.phone_missed_outlined),
                  const SizedBox(width: 10),
                  Text(
                    "تغییر شماره تلفن",
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[200],
                indent: 35,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.pin_outlined),
                  const SizedBox(width: 10),
                  Text(
                    "فعالسازی IP ثابت",
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[200],
                indent: 35,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.videogame_asset_outlined),
                  const SizedBox(width: 10),
                  Text(
                    "فعال سازی تنظیمات بازی آنلاین",
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[200],
                indent: 35,
              ),
              const SizedBox(height: 10),
              //! secend title
              const Text(
                'پشتیبانی',
                style: TextStyle(
                  fontFamily: 'SB',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.add_card_rounded),
                  const SizedBox(width: 10),
                  Text(
                    "مدیریت شبکه من",
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[200],
                indent: 35,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.graphic_eq_outlined),
                  const SizedBox(width: 10),
                  Text(
                    "صدای مشتری",
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[200],
                indent: 35,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.chat_outlined),
                  const SizedBox(width: 10),
                  Text(
                    "گفتگو آنلاین",
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[200],
                indent: 35,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.support_agent_outlined),
                  const SizedBox(width: 10),
                  Text(
                    "تماس با پشتیبانی",
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[200],
                indent: 35,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.forward_to_inbox_outlined),
                  const SizedBox(width: 10),
                  Text(
                    "ارسال تیکت به پشتیبانی",
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[200],
                indent: 35,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
