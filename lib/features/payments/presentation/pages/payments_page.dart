import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';
import '../bloc/payments_bloc.dart';
import '../bloc/payments_event.dart';
import '../bloc/payments_state.dart';
import '../widgets/create_payment_dialog.dart';
import '../widgets/statistics_card.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PaymentsBloc>()
        ..add(const LoadPaymentsEvent())
        ..add(const LoadStudentStatisticsEvent()),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'المدفوعات',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xFF2196F3),
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
        ),
        body: BlocConsumer<PaymentsBloc, PaymentsState>(
          listener: (context, state) {
            if (state.operationStatus == PaymentsStatus.success) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.operationMessage ?? 'تمت العملية بنجاح'),
                  backgroundColor: Colors.green,
                ),
              );
              // Refresh lists
              context.read<PaymentsBloc>().add(const LoadPaymentsEvent());
              context.read<PaymentsBloc>().add(
                const LoadStudentStatisticsEvent(),
              );
            } else if (state.operationStatus == PaymentsStatus.failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.operationMessage ?? 'حدث خطأ ما'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<PaymentsBloc>().add(const LoadPaymentsEvent());
                context.read<PaymentsBloc>().add(
                  const LoadStudentStatisticsEvent(),
                );
              },
              child: CustomScrollView(
                slivers: [
                  // Statistics Section
                  SliverToBoxAdapter(
                    child: _buildStatisticsSection(context, state),
                  ),

                  // Divider
                  const SliverToBoxAdapter(child: Divider(height: 1)),

                  // Payments List
                  _buildPaymentsSliverList(context, state),
                ],
              ),
            );
          },
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              heroTag: 'payments_fab',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => BlocProvider.value(
                    value: context.read<PaymentsBloc>(),
                    child: const CreatePaymentDialog(),
                  ),
                );
              },
              backgroundColor: const Color(0xFF2196F3),
              child: const Icon(Icons.add, color: Colors.white),
            );
          },
        ),
      ),
    );
  }

  Widget _buildStatisticsSection(BuildContext context, PaymentsState state) {
    if (state.statisticsStatus == PaymentsStatus.loading) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: Center(child: CircularProgressIndicator()),
      );
    } else if (state.statisticsStatus == PaymentsStatus.success &&
        state.statistics != null) {
      return StatisticsCard(statistics: state.statistics!);
    } else if (state.statisticsStatus == PaymentsStatus.failure) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          state.errorMessage ?? 'فشل تحميل الإحصائيات',
          style: const TextStyle(color: Colors.red),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildPaymentsSliverList(BuildContext context, PaymentsState state) {
    if (state.status == PaymentsStatus.loading) {
      return const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      );
    } else if (state.status == PaymentsStatus.failure) {
      return SliverFillRemaining(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.errorMessage ?? 'حدث خطأ غير متوقع'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  context.read<PaymentsBloc>().add(const LoadPaymentsEvent());
                },
                child: const Text('إعادة المحاولة'),
              ),
            ],
          ),
        ),
      );
    } else if (state.status == PaymentsStatus.success) {
      if (state.payments.isEmpty) {
        return const SliverFillRemaining(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.payment, size: 64, color: Colors.grey),
                SizedBox(height: 16),
                Text(
                  'لا توجد مدفوعات',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
          ),
        );
      }

      return SliverPadding(
        padding: const EdgeInsets.all(16),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final payment = state.payments[index];
            return _PaymentCard(payment: payment);
          }, childCount: state.payments.length),
        ),
      );
    }

    return const SliverFillRemaining(
      child: Center(child: CircularProgressIndicator()),
    );
  }
}

class _PaymentCard extends StatelessWidget {
  final payment;

  const _PaymentCard({required this.payment});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        payment.studentName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        payment.studentCode,
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                _buildStatusChip(payment.status),
              ],
            ),
            const Divider(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildInfoColumn('المبلغ', '${payment.amount} جنيه مصري'),
                _buildInfoColumn('المدفوع', '${payment.amountPaid} جنيه مصري'),
                _buildInfoColumn(
                  'المتبقي',
                  '${payment.remainingAmount} جنيه مصري',
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildInfoRow(
                  Icons.calendar_today,
                  'تاريخ الاستحقاق',
                  payment.dueDate,
                ),
              ],
            ),
            if (payment.paymentDate != null) ...[
              const SizedBox(height: 8),
              _buildInfoRow(
                Icons.check_circle,
                'تاريخ الدفع',
                payment.paymentDate!,
              ),
            ],
            const SizedBox(height: 8),
            _buildInfoRow(Icons.receipt, 'رقم المرجع', payment.referenceNumber),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    Color color;
    String label;

    switch (status.toLowerCase()) {
      case 'paid':
        color = Colors.green;
        label = 'مدفوع';
        break;
      case 'pending':
        color = Colors.orange;
        label = 'قيد الانتظار';
        break;
      case 'overdue':
        color = Colors.red;
        label = 'متأخر';
        break;
      default:
        color = Colors.grey;
        label = status;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildInfoColumn(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey[600]),
        const SizedBox(width: 8),
        Text(
          '$label: ',
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
