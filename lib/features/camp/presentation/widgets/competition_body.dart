import 'package:efraho/core/utils/custom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/services/shared_prefrences_singelton.dart';
import '../cubits/competition_cubit.dart';

class CompetitionBody extends StatelessWidget {
  const CompetitionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CompetitionCubit, CompetitionState>(
      listener: (context, state) {
        if (state is FormAddedError) {
          showBar(context, state.error, SnackBarType.error);
        } else if (state is FormAddedSuccess) {
          showBar(context, 'Form added successfully', SnackBarType.success);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            StreamBuilder<List<String>>(
              stream: context.read<CompetitionCubit>().getForms('2025'),
              builder: (context, snapshot) {
                if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const SizedBox();
                }
                final forms = snapshot.data!;
                return Expanded(
                  child: ListView.builder(
                    itemCount: forms.length,
                    itemBuilder: (context, index) {
                      final url = forms[index];
                      return ListTile(
                        title: Text("Google Form ${index + 1}"),
                        trailing: const Icon(Icons.open_in_new),
                        onTap: () async {
                          final uri = Uri.parse(url);
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri, mode: LaunchMode.externalApplication);
                          }
                        },
                      );
                    },
                  ),
                );
              },
            ),
            if (Prefs.isOwner)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    final TextEditingController controller = TextEditingController();
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: const Text("Add Google Form Link"),
                        content: TextField(
                          controller: controller,
                          decoration: const InputDecoration(hintText: "Enter form URL"),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Cancel"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              final url = controller.text.trim();
                              if (url.isNotEmpty) {
                                context.read<CompetitionCubit>().addForm('2025', url);
                                Navigator.pop(context);
                              }
                            },
                            child: const Text("Add"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text("Add Google Form"),
                ),
              )
          ],
        ),
      ),
    );
  }
}
