package eiei.myapp1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MainActivity extends AppCompatActivity {

    TextView textName;
    EditText editName;

    TextView textBithDate;
    EditText editBirthDate;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        textName=this.findViewById(R.id.textName);
        editName=this.findViewById(R.id.editName);

        textBithDate=this.findViewById(R.id.textBirthDate);
        editBirthDate=this.findViewById(R.id.editBirthDate);

        textName.setText("Hello");
    }

    public void applyName(View view){
        String tmp="Hello, "+editName.getText().toString();
        textName.setText(tmp);
    }

    public void applyDate(View view){
       DateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
       long today=(new Date()).getTime();
       long birthDay=0;
        try {
            birthDay=formatter.parse(editBirthDate.getText().toString()).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        long age=(today-birthDay)/(1000*60*60*24);
        textBithDate.setText(String.valueOf("Your age are "+age+" day"));
    }

}
