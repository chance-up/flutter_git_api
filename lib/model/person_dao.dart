// dao/person_dao.dart

import 'package:floor/floor.dart';
import 'package:search_git_users/model/person.dart';

@dao
abstract class PersonDao {
  @Query('SELECT * FROM Person')
  Future<List<Person>> findAllPersons();

  @Query('SELECT * FROM Person WHERE id = :id')
  Future<Person?> findPersonById(int id);

  @insert
  Future<void> insertPerson(Person person);
}
