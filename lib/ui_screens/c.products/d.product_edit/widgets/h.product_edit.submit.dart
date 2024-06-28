part of '../_index.dart';

class ProductEditSubmit extends StatelessWidget {
  const ProductEditSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm.st,
      builder: () => OnFormSubmissionBuilder(
        listenTo: _dt.rxForm.st,
        onSubmitting: () => const CircularProgressIndicator(),
        child: ElevatedButton(
          onPressed: () {
            _ct.submit();
          },
          child: const Text(
            "Submit",
          ),
        ),
      ),
    );
  }
}
