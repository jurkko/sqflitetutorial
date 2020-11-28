import 'package:sqflitetutorial/data/database.dart';
import 'package:sqflitetutorial/models/contact.dart';

class ContactOperations {

  DatabaseRepository dbRepository = DatabaseRepository.instance;

  createContact(Contact contact) async {
    final db = await dbRepository.database;
    print(contact.name);
    db.insert('contact', contact.toMap());
    print('Contact inserted');
  }

  updateContact(Contact contact) async {
    final db = await dbRepository.database;
    db.update('contact', contact.toMap(),
        where: 'contactId=?', whereArgs: [contact.id]);
  }

  deleteContact(Contact contact) async {
    final db = await dbRepository.database;
    db.delete('contact', where: 'contactId=?', whereArgs: [contact.id]);
  }

  Future<List<Contact>> getAllContacts() async {
    final db = await dbRepository.database;
    var allRows = await db.query('contact');
    List<Contact> contacts =
        allRows.map((contact) => Contact.fromMap(contact)).toList();
    return contacts;
  }
}
