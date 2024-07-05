import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body: Column(
        children: [
          const WalletBalanceCard(balance: 1450.75),
          const SizedBox(height: 20),
          const WalletActions(),
          const Expanded(child: TransactionList()),
        ],
      ),
    );
  }
}

class WalletBalanceCard extends StatelessWidget {
  final double balance;

  const WalletBalanceCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: 400,height: 150,
      //elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Available Balance',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Text(
              '\$${balance.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WalletActions extends StatelessWidget {
  const WalletActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            // Handle Fund Wallet action
          },
          child: const Text('Fund Wallet'),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle Withdraw action
          },
          child: const Text('Withdraw'),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle Pay action
          },
          child: const Text('Pay'),
        ),
      ],
    );
  }
}

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TransactionItem> transactions = [
      TransactionItem(
        title: 'Grocery Shopping',
        date: '2024-06-25',
        amount: -50.75,
      ),
      TransactionItem(
        title: 'Salary',
        date: '2024-06-30',
        amount: 1500.00,
      ),
      TransactionItem(
        title: 'Electricity Bill',
        date: '2024-07-01',
        amount: -75.20,
      ),
      // Add more TransactionItem objects here...
    ];

    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionListItem(transaction: transactions[index]);
      },
    );
  }
}

class TransactionItem {
  final String title;
  final String date;
  final double amount;

  TransactionItem({
    required this.title,
    required this.date,
    required this.amount,
  });
}

class TransactionListItem extends StatelessWidget {
  final TransactionItem transaction;

  const TransactionListItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(transaction.title),
      subtitle: Text(transaction.date),
      trailing: Text(
        '\$${transaction.amount.toStringAsFixed(2)}',
        style: TextStyle(
          color: transaction.amount < 0 ? Colors.red : Colors.green,
        ),
      ),
      onTap: () {
        // Handle transaction item tap
      },
    );
  }
}
