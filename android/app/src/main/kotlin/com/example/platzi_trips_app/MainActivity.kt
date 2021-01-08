package com.example.platzi_trips_app

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun OnCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)
        this.getWindow().setStatusBarColor(android.graphics.Color.TRANSPARENT);
    }
}
