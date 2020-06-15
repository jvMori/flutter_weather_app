import 'LocationEntity.dart';

abstract class LocationRepository {
  Future<List<LocationEntity>> getLocation(String query);
}
