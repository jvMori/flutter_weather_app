import 'package:flutterweatherapp/location/domain/LocationEntity.dart';
import 'package:flutterweatherapp/location/domain/LocationNetworkDataSource.dart';
import 'package:flutterweatherapp/location/domain/LocationRepository.dart';

import 'DataMapper.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationNetworkDataSource locationNetworkDataSource;

  LocationRepositoryImpl(this.locationNetworkDataSource);

  @override
  Future<List<LocationEntity>> getLocation(String query) async {
    var data = await locationNetworkDataSource.getLocation(query);
    return data.body.mapToEntity();
  }
}
