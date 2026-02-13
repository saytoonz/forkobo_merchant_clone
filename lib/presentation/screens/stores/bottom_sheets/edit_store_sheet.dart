import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/presentation/widget/stores/components/store_chip.dart';
import 'package:forkobo_merchant/repository/repository.dart';
import 'package:forkobo_merchant/di.dart';
import 'package:forkobo_merchant/entity/category.dart';
import 'package:forkobo_merchant/presentation/notifiers/store_notifier.dart';

class EditStoreSheet extends StatefulWidget {
  const EditStoreSheet({super.key});

  @override
  State<EditStoreSheet> createState() => _EditStoreSheetState();
}

class _EditStoreSheetState extends State<EditStoreSheet> {
  final TextEditingController _controller = TextEditingController();
  final Repository _repo = getIt.get<Repository>();
  final Set<String> _selectedCategories = <String>{};

  List<Category> _categories = <Category>[];
  bool _loadingCategories = true;
  String _loadError = '';
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    // Pre-fill with current store name
    final store = context.read<StoreNotifier>().selectedStore;
    if (store != null) {
      _controller.text = store.storeName;
    }
    _fetchCategories();
  }

  Future<void> _fetchCategories() async {
    setState(() {
      _loadingCategories = true;
      _loadError = '';
    });
    try {
      final cats = await _repo.getCategories();
      setState(() {
        _categories = cats;
      });
    } catch (e) {
      setState(() {
        _loadError = e.toString();
      });
    } finally {
      setState(() {
        _loadingCategories = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Edit store',
                      style:
                          textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackText,
                          ) ??
                          const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackText,
                          ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: AppColors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Store name',
                style:
                    textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackText,
                    ) ??
                    const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackText,
                    ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: AppColors.black,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Select categories you not want us to sell in your store.',
                style:
                    textTheme.bodySmall?.copyWith(color: AppColors.grey) ??
                    const TextStyle(fontSize: 12, color: AppColors.grey),
              ),
              const SizedBox(height: 16),
              if (_loadingCategories)
                const SizedBox(
                  height: 24,
                  child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
                )
              else if (_loadError.isNotEmpty)
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        _loadError,
                        style: textTheme.bodySmall?.copyWith(color: AppColors.red) ??
                            const TextStyle(fontSize: 12, color: AppColors.red),
                      ),
                    ),
                    TextButton(onPressed: _fetchCategories, child: const Text('Retry')),
                  ],
                )
              else
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: _categories
                      .map(
                        (Category c) => StoreChip(
                          label: c.title,
                          isSelected: _selectedCategories.contains(c.title),
                          onTap: () {
                            setState(() {
                              if (_selectedCategories.contains(c.title)) {
                                _selectedCategories.remove(c.title);
                              } else {
                                _selectedCategories.add(c.title);
                              }
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              const SizedBox(height: 32),
              Row(
                children: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      'Cancel',
                      style:
                          textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.grey,
                          ) ??
                          const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.grey,
                          ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF2B5F),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 18,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    onPressed: _saving
                        ? null
                        : () async {
                            setState(() => _saving = true);
                            try {
                              await context.read<StoreNotifier>().updateSelectedStore(
                                    storeName: _controller.text.trim(),
                                    selectedCategories: _selectedCategories.toList(),
                                  );
                              if (mounted) Navigator.of(context).pop();
                            } catch (_) {
                              // Error surfaced via notifier error; keep sheet open
                            } finally {
                              if (mounted) setState(() => _saving = false);
                            }
                          },
                    child: Text(
                      _saving ? 'Saving...' : 'Save',
                      style:
                          textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          ) ??
                          const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
