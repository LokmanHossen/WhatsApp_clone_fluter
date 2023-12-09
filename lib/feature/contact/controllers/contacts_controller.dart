import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whats_app_clone/feature/contact/repository/contact_repository.dart';

final contactControllerProvider = FutureProvider((ref) {
  final contactRepository = ref.watch(contactsRepositoryProvider);
  return contactRepository.getAllContacts();
});
