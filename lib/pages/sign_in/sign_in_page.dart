import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_signin_signout/pages/sign_in/sign_in_process_provider.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Spacer(),
            _SignInForm(formKey: formKey),
            const SizedBox(height: 24),
            _SignInButton(formKey: formKey),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class _SignInForm extends StatelessWidget {
  const _SignInForm({required this.formKey});

  final GlobalKey<FormBuilderState> formKey;
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      initialValue: {
        _FormName.email.name: 'hoge@hoge.com',
        _FormName.password.name: 'hogehoge',
      },
      child: Column(
        children: [
          _EmailField(),
          _PasswordField(),
        ],
      ),
    );
  }
}

class _EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: _FormName.email.name,
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
      ),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.email(),
      ]),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      autofillHints: const [AutofillHints.email],
    );
  }
}

class _PasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: _FormName.password.name,
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
      ),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.minLength(8),
      ]),
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
      autofillHints: const [AutofillHints.password],
    );
  }
}

class _SignInButton extends ConsumerWidget {
  const _SignInButton({
    required this.formKey,
  });

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final process = ref.watch(signInProcessProvider);
    return ElevatedButton(
      onPressed: () async {
        if (formKey.currentState!.saveAndValidate()) {
          final state = formKey.currentState!;
          final email = state.fields[_FormName.email.name]?.value as String;
          final password =
              state.fields[_FormName.password.name]?.value as String;
          await ref.read(signInProcessProvider.notifier).signIn(
                email: email,
                password: password,
              );
        }
      },
      child: switch (process.isLoading) {
        true => const CircularProgressIndicator(),
        false => const Text('Sign In'),
      },
    );
  }
}

enum _FormName {
  email,
  password,
}
