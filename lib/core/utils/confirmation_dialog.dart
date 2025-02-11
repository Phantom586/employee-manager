import 'package:employee_manager/core/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    required this.onDelete,
    required this.onCancel,
    super.key,
  });

  final Function() onDelete;
  final Function() onCancel;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(25, 40, 25, 16),
          width: kIsWeb ? null : double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Confirm Delete',
                style: textTheme.bodyLarge?.copyWith(
                  color: AppColors.focusedTextColor,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "You're about to delete this employee.\nDo you wish to continue?",
                textAlign: TextAlign.center,
                style: textTheme.bodySmall?.copyWith(
                  color: AppColors.muteText,
                ),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: onDelete,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 42,
                    vertical: 16,
                  ),
                  splashFactory: NoSplash.splashFactory,
                ),
                child: Text(
                  'Delete',
                  textAlign: TextAlign.center,
                  style: textTheme.bodySmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: onCancel,
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 42,
                    vertical: 16,
                  ),
                  splashFactory: NoSplash.splashFactory,
                ),
                child: Text(
                  'Cancel',
                  style: textTheme.bodySmall?.copyWith(
                    color: AppColors.muteText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
