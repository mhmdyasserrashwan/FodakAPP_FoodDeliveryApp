import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget orderVoucherItem({required String name, required int number}) {
      return Column(
        children: [
          Text(
            number.toString(),
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      );
    }

    Widget vouchersOrdersHistoryTiles(
        {required String title, String? subTitle, required IconData icon}) {
      return ListTile(
        onTap: () {
          debugPrint('clicked');
        },
        leading: Icon(
          icon,
          size: 25,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(title),
        subtitle: subTitle != null ? Text(subTitle) : null,
        trailing: Icon(
          Icons.chevron_right,
          size: 25,
          color: Theme.of(context).primaryColor,
        ),
      );
    }

    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 220,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/myoic.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Mohammed Yasser Rashwan',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              orderVoucherItem(name: 'Orders', number: 50),
              orderVoucherItem(name: 'Vouchers', number: 4)
            ],
          ),
          const Divider(
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          vouchersOrdersHistoryTiles(
              title: 'Orders History', icon: Icons.shopping_cart),
          const Divider(
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          vouchersOrdersHistoryTiles(
              title: 'Vouchers History', icon: Icons.card_giftcard),
          const Divider(
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
