import os
import mariadb
import pandas as pd

# Konfigurasi koneksi ke MariaDB
# Untuk keamanan sebenarnya bisa menggunakan JSON dan dimasukan ke .gitignore, namun ini hanya pengecualian karena menggunakan localhost
db_config = {
    "host": "localhost",      
    "port": 3306,             
    "user": "root",
    "password": "password.1",
    "database": "sales_dw"
}

# Path folder tujuan
save_path = r"C:\Users\HP\Documents\Belajar Adit\mih-de-test\data"
file_name = "transaction.csv"  
full_path = os.path.join(save_path, file_name)

try:
    # Membuat koneksi ke MariaDB
    conn = mariadb.connect(**db_config)
    cursor = conn.cursor()

    # Mengeksekusi query untuk mengambil data dari tabel transaction
    table_name = "transaction"  
    query = f"SELECT * FROM {table_name}"

    # Membaca tabel ke dalam DataFrame
    df = pd.read_sql_query(query, conn)

    # Menyimpan ke CSV di folder yang ditentukan
    df.to_csv(full_path, index=False, encoding="utf-8")

    print(f"✅ Data dari tabel '{table_name}' berhasil diekspor ke '{full_path}'")

except mariadb.Error as e:
    print("❌ Error:", e)

finally:
    # Menutup koneksi
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals() and conn:
        conn.close()
