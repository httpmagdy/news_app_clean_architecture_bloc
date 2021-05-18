import '../../domain/entities/source.dart';

class SourceModel extends Source {
  const SourceModel({
    String id,
    String name,
  }) : super(
          id: id,
          name: name,
        );

  factory SourceModel.fromJson(Map<String, dynamic> map) {
    if (map == null) return null;
    return SourceModel(id: map['id'] as String, name: map['name'] as String);
  }
}
