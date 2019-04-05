package com.e.intent;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class Main2Activity extends AppCompatActivity {

    private TextView textName;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        Intent intent = getIntent();
        String name = intent.getStringExtra("name");
        textName = findViewById(R.id.showName);
        textName.setText("Hello, "+name);
    }

    public void onBack(View v){
        finish();
        //startActivity(new Intent(this,MainActivity.class));
    }
}
