import 'dart:math';

import 'package:flutter/cupertino.dart';

class Contact {
  final String id;
  final String name;
  final String avatarUrl;

  const Contact({this.id, this.name, this.avatarUrl});

}

const FAKE_CONTACTS = {
  '1': const Contact(
    id: '1',
    name: 'Alexander',
    avatarUrl:
        'https://avatars2.githubusercontent.com/u/36086408?s=460&u=2cbc8bda6bdc1cc9b3ee46959dcc4be87569e469&v=4',
  ),
  '2': const Contact(
    id: '2',
    name: 'Alexander',
    avatarUrl:
        'https://avatars2.githubusercontent.com/u/36086408?s=460&u=2cbc8bda6bdc1cc9b3ee46959dcc4be87569e469&v=4',
  ),
  '3': const Contact(
    id: '3',
    name: 'Alexander',
    avatarUrl:
        'https://avatars2.githubusercontent.com/u/36086408?s=460&u=2cbc8bda6bdc1cc9b3ee46959dcc4be87569e469&v=4',
  ),
  '4': const Contact(
    id: '4',
    name: 'Alexander',
    avatarUrl:
        'https://avatars2.githubusercontent.com/u/36086408?s=460&u=2cbc8bda6bdc1cc9b3ee46959dcc4be87569e469&v=4',
  ),
  '5': const Contact(
    id: '5',
    name: 'Alexander',
    avatarUrl:
        'https://avatars2.githubusercontent.com/u/36086408?s=460&u=2cbc8bda6bdc1cc9b3ee46959dcc4be87569e469&v=4',
  ),
};
class Contacts with ChangeNotifier{
  final Map<String, Contact> _contacts = {...FAKE_CONTACTS};

  List<Contact> get all {
    return [..._contacts.values];
  }

  int get count {
    return _contacts.length;
  }

  Contact byIndex(int index) {
    return _contacts.values.elementAt(index);
  }

  void put(Contact contact) {
    if (contact == null) {
      return;
    }

    if (contact.id != null &&
        contact.id.trim().isNotEmpty &&
        _contacts.containsKey(contact.id)) {
      _contacts.update(contact.id, (_) => contact);
    } else {
      final id = Random().nextDouble().toString();
      _contacts.putIfAbsent(
        id,
        () => Contact(
          id: id,
          name: contact.name,
          avatarUrl: contact.avatarUrl,
        ),
      );
    }
  }
}

