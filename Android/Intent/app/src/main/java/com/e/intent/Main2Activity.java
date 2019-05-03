package com.e.intent;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.TextView;

public class Main2Activity extends AppCompatActivity {

    private TextView textName;
    private WebView webView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        Intent intent = getIntent();
        String name = intent.getStringExtra("name");

        textName = findViewById(R.id.showName);
        webView = findViewById(R.id.webView);

        webView.setWebViewClient(new WebViewClient());
        webView.loadUrl("https://www.facebook.com/"+name);

        textName.setText("facebookid: "+name);
    }

    public void onBack(View v){
        finish();
    }
}
