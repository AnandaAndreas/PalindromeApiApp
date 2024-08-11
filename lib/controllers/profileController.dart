import 'package:get/get.dart';
import 'package:kampusmerdeka/models/profile_model.dart';
import 'package:kampusmerdeka/repository_profile.dart';

class ProfileController extends GetxController {
  var profiles = <ProfileModel>[].obs;
  var isLoading = true.obs; 

  @override
  void onInit() {
    fetchProfiles();
    super.onInit();
  }

  Future<void> fetchProfiles() async {
    try {
      isLoading(true);
      var profilesFromApi = await RepositoryProfile().getData();
      profiles.assignAll(profilesFromApi);
    } catch (e) {
      print("Error fetching profiles: $e");
    } finally {
      isLoading(false);
    }
  }
}
