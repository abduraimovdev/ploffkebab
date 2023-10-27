package uz.abduraimov.ploff_kebab
import io.flutter.embedding.android.FlutterActivity
import androidx.annotation.NonNull
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("53d1a0d8-9e35-45ec-b56a-4270a9fd3df8") // Your generated API key
        super.configureFlutterEngine(flutterEngine)
    }
}