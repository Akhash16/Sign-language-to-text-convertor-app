package app.ij.mlwithtensorflowlite;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class SelectLanguage extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_select_language);
        getSupportActionBar().setTitle("      Sign Language Interpretation");

        Button EngButton = (Button) findViewById(R.id.eng_btn);
        EngButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
// Click event trigger here
                String value="english";
                Intent i = new Intent(SelectLanguage.this, HomePage.class);
                i.putExtra("key",value);
                startActivity(i);
            }
        });



        Button TamButton = (Button) findViewById(R.id.tam_btn);
        TamButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
// Click event trigger here
                String value="tamil";
                Intent i = new Intent(SelectLanguage.this, HomePage.class);
                i.putExtra("key",value);
                startActivity(i);
            }
        });



        Button HinButton = (Button) findViewById(R.id.hin_btn);
        HinButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
// Click event trigger here
                String value="hindi";
                Intent i = new Intent(SelectLanguage.this, HomePage.class);
                i.putExtra("key",value);
                startActivity(i);
            }
        });







    }
}