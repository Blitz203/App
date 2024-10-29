import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/params/params.dart';
import '../entities/pokemon_image_entity.dart';
import '../repositories/pokemon_Image_repository.dart';

class GetPokemonImage {
  final PokemonImageRepository pokemonImageRepository;

  GetPokemonImage(this.pokemonImageRepository);

  Future<Either<Failure, PokemonImageEntity>> call({
    required PokemonImageParams pokemonImageParams,
  }) async {
    return await pokemonImageRepository.getPokemonImage(
        pokemonImageParams: pokemonImageParams);
  }
}
