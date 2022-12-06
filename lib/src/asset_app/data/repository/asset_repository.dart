import 'package:asset_mobile/src/shared/data/endpoint.dart';

class AssetRepository {
  // final ApiRepository _apiRepository;

  // Future<Result<AssetModel>> getAssets({
  //   required int applicationId,
  //   required AssetForm AssetForm,
  // }) async {
  //   Result response = await _apiRepository.post(
  //     url: Endpoint.getAssets(applicationId),
  //     body: AssetForm.toJson(),
  //   );

  //   return response.handle(
  //     onSuccess: (data) {
  //       try {
  //         final AssetEntity application = AssetEntity.fromJson(data);

  //         final AssetModel applicationModel = application.toDomain();

  //         return Success(applicationModel);
  //       } on ParseException catch (e) {
  //         return Failure(EntityNotFitError(slug: e.exception));
  //       } catch (e) {
  //         return Failure(
  //           ParseError(slug: e.toString()),
  //         );
  //       }
  //     },
  //     onFailure: (error) {
  //       return Failure(error);
  //     },
  //   );
  // }
}
