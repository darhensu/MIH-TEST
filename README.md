🚀 ETL dengan Pentaho, OLAP & OLTP, Power BI, dan Sales Prediction dengan LSTM

📌 Deskripsi Proyek

Proyek ini mencakup proses Extract, Transform, Load (ETL) menggunakan Pentaho Data Integration untuk memproses data transaksi penjualan. Data diolah ke dalam skema OLTP dan OLAP, divisualisasikan menggunakan Power BI, serta dilakukan prediksi penjualan menggunakan model LSTM.

🏗 Struktur Proyek

ETL dengan Pentaho: Proses extract, transform, dan load dari sumber data ke dalam database.

Case 1-6: Memecahkan pertanyaan soal dengan SQL queries.

Visualisasi dengan Power BI: Dashboard interaktif untuk analisis tren penjualan.

Sales Prediction dengan LSTM: Model deep learning untuk memprediksi penjualan masa depan.



📝 Case Studies

1️⃣ Extract Data dari Sumber

Data transaksi diekstrak dari berbagai sumber (CSV dan JSON).

Digunakan Pentaho untuk proses ETL.

2️⃣ Transformasi Data

Pembersihan data (Rename column, pengahpusan currency, perubahan type data, dll).

Normalisasi dan agregasi data sebelum masuk ke database.

3️⃣ Load ke Database OLTP

Data transaksi dimasukkan ke database dengan skema OLTP.

4️⃣ Visualisasi dengan Power BI

Dashboard untuk monitoring penjualan per toko, produk, dan tren waktu.

KPI utama: Total Penjualan, Rata-rata Harga, Performa Cabang.

5️⃣ Prediksi Penjualan dengan LSTM (TBD)

Time series forecasting menggunakan model LSTM. (TBD)

Digunakan dataset historis penjualan. (TBD)

Model dilatih untuk memprediksi tren penjualan dalam 30 hari ke depan. (TBD)




📊 ERD (Entity Relationship Diagram)

Terdapat dua skema database:

OLTP: Berfokus pada transaksi harian dengan tabel utama seperti transaction, product, store, dll.

OLAP: Data warehouse untuk analisis dengan fact table dan dimension tables.



💻 Implementasi Teknologi

Pentaho Data Integration

MySQL/MariaDB

Power BI

Python (TensorFlow, Pandas, Matplotlib)

🔧 Cara Menjalankan Proyek

Menjalankan ETL dengan Pentaho

Buka Pentaho Data Integration (Spoon).

Load file ETL_Pipeline.ktr dan jalankan.

Menjalankan OLTP & OLAP di Database

Jalankan query SQL untuk membuat tabel.

Visualisasi dengan Power BI

Buka Sales_Dashboard.pbix dengan Power BI Desktop.

Menjalankan Model LSTM



📂 Struktur Folder

data/                   # Dataset mentah dan hasil transformasi

erd/                    # ERD OLTP dan model OLAP

etl/                    # File ETL untuk Pentaho

viz/                    # Dashboard Power BI (.pbix)

ml/                     # Model LSTM untuk prediksi penjualan

query/                  # Jawaban query case 1-6

doc/                    # Dokumentasi

README.md               # Dokumentasi proyek ini



📌 Hasil dan Kesimpulan

ETL berhasil dilakukan menggunakan Pentaho.

Database OLTP dan OLAP dirancang untuk mempermudah analisis data.

Dashboard Power BI memberikan wawasan penting tentang tren penjualan.

Model LSTM mampu memprediksi tren penjualan untuk 30 hari ke depan dengan akurasi yang cukup baik. (TBD)
