import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatapp_messenger/feature/contact/repository/contacts_repository.dart';

final contactsControllerProvider = FutureProvider((ref) {
  final contactRepository = ref.watch(contactsRepositoryProvider);
  return contactRepository.getAllContacts();
});
