import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  final String locationName;
  final int woeid;

  LocationEntity(this.locationName, this.woeid);

  @override
  List<Object> get props => [locationName, woeid];
}
