part of '../_index.dart';

class ProductInputSubmit extends StatelessWidget {
  const ProductInputSubmit({super.key});

  get child => null;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => OnFormSubmissionBuilder(
        listenTo: _dt.rxForm,
        onSubmitting: () => const CircularProgressIndicator(),
        child: ElevatedButton(
          onPressed: _dt.rxForm.isDirty && _dt.rxForm.isValid
              ? () {
                  _ct.submit();
                }
              : null,
          child: const Text(
            "Submit",
          ),
        ),
      ),
    );
  }
}
