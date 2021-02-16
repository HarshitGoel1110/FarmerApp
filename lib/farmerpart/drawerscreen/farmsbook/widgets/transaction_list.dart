import 'package:farmer/farmerpart/drawerscreen/farmsbook/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function dltTx;

  TransactionList(this.transactions, this.dltTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transactions yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 10,
                ),
                
              ],
            )
          : ListView.builder(
              itemBuilder: (bldCtx, index) {
                return Card(
                  shadowColor: Colors.green,
                  elevation: 3,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text(
                            "Rs ${transactions[index].amount.toStringAsFixed(2)}",
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      '${transactions[index].title}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                      DateFormat.yMd().format(transactions[index].date),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete), color: Colors.green[800],
                      onPressed: ()=>dltTx(transactions[index].id),
                      ),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}