import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/params/params.dart';
import '../entities/new_order_entity.dart';

abstract class TemplateRepository {
  Future<Either<Failure, TemplateEntity>> getTemplate({
    required TemplateParams templateParams,
  });
}
