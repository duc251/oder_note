
import 'package:freezed_annotation/freezed_annotation.dart';
part 'days.freezed.dart';
part 'days.g.dart';

@freezed

class Days with _$Days{
  const factory  Days({
   @Default("") String datetime,
   num? tempmax,
   num? tempmin,
   num? feelslikemax,
   num? feelslikemin,
   num? feelslike,
   num? dew,
   num? humidity,
   num? precip,
    num? precipprob,
    num? precipcover,
     num? pressure,
      num? visibility,
       num? uvindex,
   double? temp,
   @Default("") String conditions,
   @Default("") String description,
   @Default("") String icon,
   @Default("") String sunrise,
   @Default("") String sunset,
    @Default([]) List<Hours> hours,
}) = _Days; 
factory Days.fromJson(Map<String, dynamic> json)=> _$DaysFromJson(json);
}

@freezed
class Hours with _$Hours {
  factory  Hours (
  {@Default("") String conditions,
  double? temp,
  double? humidity,
@Default("") String datetime,
  @Default("") String icon,}
  )= _Hours;
  factory  Hours.fromJson(Map<String,dynamic> json) => _$HoursFromJson(json);
}