import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/payments_bloc.dart';
import '../bloc/payments_event.dart';
import '../bloc/payments_state.dart';

class CreatePaymentDialog extends StatefulWidget {
  const CreatePaymentDialog({super.key});

  @override
  State<CreatePaymentDialog> createState() => _CreatePaymentDialogState();
}

class _CreatePaymentDialogState extends State<CreatePaymentDialog> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController(text: '200.00');

  String? _selectedStudentId;
  String _selectedPaymentType = 'monthly';
  DateTime _periodStart = DateTime.now();
  DateTime _periodEnd = DateTime.now().add(const Duration(days: 30));
  DateTime _dueDate = DateTime.now().add(const Duration(days: 30));

  final List<String> _paymentTypes = ['monthly', 'per_session', 'custom'];

  @override
  void initState() {
    super.initState();
    // Load students when dialog opens
    context.read<PaymentsBloc>().add(const LoadStudentsEvent());
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate() && _selectedStudentId != null) {
      context.read<PaymentsBloc>().add(
        CreatePaymentEvent(
          studentId: _selectedStudentId!,
          amount: _amountController.text,
          paymentType: _selectedPaymentType,
          periodStart: _periodStart.toIso8601String().split('T')[0],
          periodEnd: _periodEnd.toIso8601String().split('T')[0],
          dueDate: _dueDate.toIso8601String().split('T')[0],
        ),
      );
      Navigator.of(context).pop();
    } else if (_selectedStudentId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('يرجى اختيار طالب'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('إنشاء مدفوع جديد'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildStudentDropdown(),
              const SizedBox(height: 16),
              TextFormField(
                controller: _amountController,
                decoration: const InputDecoration(
                  labelText: 'المبلغ',
                  border: OutlineInputBorder(),
                  suffixText: 'جنيه مصري',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى إدخال المبلغ';
                  }
                  if (double.tryParse(value) == null) {
                    return 'يرجى إدخال رقم صحيح';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _selectedPaymentType,
                decoration: const InputDecoration(
                  labelText: 'نوع الدفع',
                  border: OutlineInputBorder(),
                ),
                items: _paymentTypes.map((type) {
                  String label;
                  switch (type) {
                    case 'monthly':
                      label = 'شهري';
                      break;
                    case 'per_session':
                      label = 'لكل جلسة';
                      break;
                    case 'custom':
                      label = 'مخصص';
                      break;
                    default:
                      label = type;
                  }
                  return DropdownMenuItem(value: type, child: Text(label));
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _selectedPaymentType = value;
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
              _buildDatePicker(
                'تاريخ البداية',
                _periodStart,
                (date) => setState(() => _periodStart = date),
              ),
              const SizedBox(height: 16),
              _buildDatePicker(
                'تاريخ النهاية',
                _periodEnd,
                (date) => setState(() => _periodEnd = date),
              ),
              const SizedBox(height: 16),
              _buildDatePicker(
                'تاريخ الاستحقاق',
                _dueDate,
                (date) => setState(() => _dueDate = date),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('إلغاء'),
        ),
        ElevatedButton(
          onPressed: _submit,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2196F3),
            foregroundColor: Colors.white,
          ),
          child: const Text('إنشاء'),
        ),
      ],
    );
  }

  Widget _buildStudentDropdown() {
    return BlocBuilder<PaymentsBloc, PaymentsState>(
      buildWhen: (previous, current) =>
          previous.studentsStatus != current.studentsStatus,
      builder: (context, state) {
        if (state.studentsStatus == PaymentsStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.studentsStatus == PaymentsStatus.success) {
          return DropdownButtonFormField<String>(
            value: _selectedStudentId,
            decoration: const InputDecoration(
              labelText: 'الطالب',
              border: OutlineInputBorder(),
            ),
            items: state.students.map((student) {
              return DropdownMenuItem(
                value: student.id,
                child: Text('${student.name} (${student.code})'),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedStudentId = value;
              });
            },
            validator: (value) {
              if (value == null) {
                return 'يرجى اختيار طالب';
              }
              return null;
            },
          );
        } else if (state.studentsStatus == PaymentsStatus.failure) {
          return Text(
            state.errorMessage ?? 'فشل تحميل الطلاب',
            style: const TextStyle(color: Colors.red),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildDatePicker(
    String label,
    DateTime selectedDate,
    Function(DateTime) onDateSelected,
  ) {
    return InkWell(
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2020),
          lastDate: DateTime(2030),
        );
        if (date != null) {
          onDateSelected(date);
        }
      },
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(selectedDate.toIso8601String().split('T')[0]),
            const Icon(Icons.calendar_today),
          ],
        ),
      ),
    );
  }
}
