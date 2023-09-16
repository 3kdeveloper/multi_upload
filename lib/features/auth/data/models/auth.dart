import '../../../../core/constants/export.dart';
import '../../domain/entities/auth.dart';

part 'auth.g.dart';

@JsonSerializable()
class AuthModel extends AuthEntity {
  const AuthModel({
    String? uid,
    String? name,
    String? email,
    String? password,
  }) : super(uid: uid, name: name, email: email, password: password);

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);

  factory AuthModel.fromEntity(AuthEntity entity) {
    return AuthModel(
      uid: entity.uid,
      name: entity.name,
      email: entity.email,
      password: entity.password,
    );
  }
}
