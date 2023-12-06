import 'package:test_endpoint/src/domain/usecases/base_usecase.dart';

class AskAiUseCase implements UseCase<Exception, void, AskAiUseCaseParams> {
  const AskAiUseCase(this._userRepository);

  final UserRepository _userRepository;

  @override
  Future<Either<Exception, void>> call(AskAiUseCaseParams params) =>
      _userRepository.loginWithOauth(params.context, params.provider);
}

class AskAiUseCaseParams implements Params {
  final BuildContext context;
  final Provider provider;

  const AskAiUseCaseParams({
    required this.context,
    required this.provider,
  });
}
