package com.example.hwproject005;

public class Konfigurasi {
    //url dimana web API berada
    //melihat data
    public static final String URL_GET_ALL = "http://192.168.0.6/nasabah/tampilSemuaNsb.php";
    public static final String URL_GET_DETAIL = "http://192.168.0.6/nasabah/tampilNsb.php?id=";

    //flag JSON
    public static final String TAG_JSON_ARRAY = "result";
    public static final String TAG_JSON_ID = "id";
    public static final String TAG_JSON_NAMA = "name";
    public static final String TAG_JSON_REKENING = "account";
    public static final String TAG_JSON_ALAMAT = "address";
    public static final String TAG_JSON_KOTA = "city";
    public static final String TAG_JSON_TABUNGAN = "saving";
    public static final String TAG_JSON_PINJAMAN = "loan";

    //variabel ID pegawai
    public static final String PGW_ID = "emp_id";
}
