package com.e.i_timmer;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    private TextView counter;
    private LinearLayout linPhoto;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        counter = findViewById(R.id.counter);

        DemoAsyncTask async = new DemoAsyncTask();
        //async.execute(50, 100);//used AsyncTask.SERIAL_EXECUTOR //execute doInBackground
        async.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, 50, 100);

        linPhoto = findViewById(R.id.linPhoto);

        ArrayList<String> urls = new ArrayList<>();
        urls.add("http://www.cicc.chula.ac.th/images/phocagallery/The-Pride-Chula/thumbs/phoca_thumb_l_the_pride_of_chula_5_20120110_1277178802.jpg");
        urls.add("http://www.cicc.chula.ac.th/images/phocagallery/The-Pride-Chula/thumbs/phoca_thumb_l_the_pride_of_chula_2_20120110_1725076152.jpg");
        urls.add("http://www.cicc.chula.ac.th/images/phocagallery/The-Pride-Chula/thumbs/phoca_thumb_l_the_pride_of_chula_1_20120110_1834685026.jpg");
        urls.add("http://www.cicc.chula.ac.th/images/phocagallery/building_around_cu/thumbs/phoca_thumb_l_building_around_cu_1_20120110_1162684490.jpg");
        //LoaderTask task = new LoaderTask();
        //task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, urls);

        for(String url: urls) {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 500);
            ImageView imgView = new ImageView(MainActivity.this);
            imgView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imgView.setLayoutParams(lp);
            linPhoto.addView(imgView);
            Glide.with(MainActivity.this).load(url).into(imgView);
        }

    }

    /*class LoaderTask extends AsyncTask<List<String>, Bitmap, String> {
        int counter;

        @Override
        protected void onPreExecute() {
            Toast toast = (Toast) Toast.makeText(MainActivity.this, "Loading images", Toast.LENGTH_LONG);
            toast.show();
            counter = 0;
        }

        @Override
        protected String doInBackground(List<String>... lists) {
            List<String> urls = lists[0];
            for (String url : urls) {
                try {
                    URL ImageUrl = new URL(url);
                    HttpURLConnection conn = (HttpURLConnection) ImageUrl.openConnection();
                    conn.setDoInput(true);
                    conn.connect();
                    InputStream is = conn.getInputStream();
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inPreferredConfig = Bitmap.Config.RGB_565;
                    Bitmap bmp = BitmapFactory.decodeStream(is, null, options);
                    publishProgress(bmp);
                    counter++;
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return String.valueOf(counter);
        }

        @Override
        protected void onProgressUpdate(Bitmap... bitmaps) {
            super.onProgressUpdate(bitmaps);
            for (Bitmap bitmap : bitmaps) {
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(500, 500);
                ImageView imgView = new ImageView(MainActivity.this);
                imgView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                imgView.setLayoutParams(lp);
                imgView.setImageBitmap(bitmap);
                linPhoto.addView(imgView);
            }
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            Toast toast = (Toast) Toast.makeText(MainActivity.this, "Finish loading " + s + " image(s)", Toast.LENGTH_LONG);
            toast.show();
        }

    }*/


    class DemoAsyncTask extends AsyncTask<Integer, Float, Boolean> {

        @Override
        protected Boolean doInBackground(Integer... integers) {
            int start = integers[0];
            int end = integers[1];

            for (int i = start; i < end; i++) {
                publishProgress((float) i);
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }

        @Override
        protected void onProgressUpdate(Float... values) {
            super.onProgressUpdate(values);
            counter.setText(String.valueOf(values[0]));
        }

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
        }
        
        @Override
        protected void onPostExecute(Boolean aBoolean) {
            super.onPostExecute(aBoolean);
        }
    }


}
