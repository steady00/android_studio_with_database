package com.example.hwproject005;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.EditText;

import org.json.JSONArray;
import org.json.JSONObject;

public class LihatDetailDataActivity extends AppCompatActivity {
    EditText edit_id, edit_nama, edit_no_rekening, edit_alamat, edit_kota, edit_tabungan, edit_pinjaman;
    String id;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lihat_detail_data);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setTitle("Detail Data Nasabah");

        edit_id = findViewById(R.id.edit_id);
        edit_nama = findViewById(R.id.edit_nama);
        edit_no_rekening = findViewById(R.id.edit_no_rekening);
        edit_alamat = findViewById(R.id.edit_alamat);
        edit_kota = findViewById(R.id.edit_kota);
        edit_tabungan = findViewById(R.id.edit_tabungan);
        edit_pinjaman = findViewById(R.id.edit_pinjaman);

        // menerima intent dari class LihatDataActivity
        Intent receiveIntent = getIntent();
        id = receiveIntent.getStringExtra(Konfigurasi.PGW_ID);
        edit_id.setText(id);

        // mengambil data JSON
        getJSON();
    }

    private void getJSON() {
        // bantuan dari class AsyncTask
        class GetJSON extends AsyncTask<Void, Void, String> {
            ProgressDialog loading;

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                loading = ProgressDialog.show(LihatDetailDataActivity.this,
                        "Mengambil Data", "Harap menunggu...",
                        false, false);
            }

            @Override
            protected String doInBackground(Void... voids) {
                HttpHandler handler = new HttpHandler();
                String result = handler.sendGetResponse(Konfigurasi.URL_GET_DETAIL, id);
                return result;
            }

            @Override
            protected void onPostExecute(String message) {
                super.onPostExecute(message);
                loading.dismiss();
                displayDetailData(message);
            }
        }
        GetJSON getJSON = new GetJSON();
        getJSON.execute();
    }

    private void displayDetailData(String json) {
        try {
            JSONObject jsonObject = new JSONObject(json);
            JSONArray result = jsonObject.getJSONArray(Konfigurasi.TAG_JSON_ARRAY);
            JSONObject object = result.getJSONObject(0);

            String nama = object.getString(Konfigurasi.TAG_JSON_NAMA);
            String rekening = object.getString(Konfigurasi.TAG_JSON_REKENING);
            String alamat = object.getString(Konfigurasi.TAG_JSON_ALAMAT);
            String kota = object.getString(Konfigurasi.TAG_JSON_KOTA);
            String tabungan = object.getString(Konfigurasi.TAG_JSON_TABUNGAN);
            String pinjaman = object.getString(Konfigurasi.TAG_JSON_PINJAMAN);

            edit_nama.setText(nama);
            edit_no_rekening.setText(rekening);
            edit_alamat.setText(alamat);
            edit_kota.setText(kota);
            edit_tabungan.setText(tabungan);
            edit_pinjaman.setText(pinjaman);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        onBackPressed();
        return true;
    }
}