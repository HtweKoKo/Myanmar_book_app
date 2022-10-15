import 'package:myanmar_sar_kyi_tite/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> isLogin()async{
SharedPreferences _sharedPreference = await SharedPreferences.getInstance();
    return _sharedPreference.getBool("login")?? false;
}
 save ({required String key,required String value})async{

  SharedPreferences _sharedPreference = await SharedPreferences.getInstance();
        _sharedPreference.setString(key, value);
 }
 login({required String key,required bool isLogin})async{
    SharedPreferences _sharedPreference = await SharedPreferences.getInstance();
        _sharedPreference.setBool(key, isLogin);
 }
 Future<String> getdata({required  Key})async{
    SharedPreferences _sharedPreference = await SharedPreferences.getInstance();
    return _sharedPreference.getString(Key) ?? "";

 }
 