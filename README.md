# 🏦 Pipeline Data Kurs Bank Indonesia

Pipeline data end-to-end menggunakan **dbt Core** dan **PostgreSQL** 
untuk mengolah data kurs mata uang dari Bank Indonesia.

## 🏗️ Arsitektur
kurs_harian (PostgreSQL)
↓
raw_kurs → transform_kurs → mart_kurs


## 📦 Tech Stack
- **dbt Core** 1.12.3 — transformasi data
- **PostgreSQL** 16 — database
- **Python** 3.12 — environment

## 🗂️ Struktur Model
| Model | Tipe | Deskripsi |
|---|---|---|
| raw_kurs | view | Ambil kolom dari tabel mentah |
| transform_kurs | view | Kalkulasi rata-rata, ekstrak bulan/tahun |
| mart_kurs | view | Agregasi kurs per bulan |

## ✅ Data Quality Tests
- 6 tests (not_null & unique)
- Semua PASS

## 🚀 Cara Menjalankan
```bash
dbt run    # jalankan semua model
dbt test   # jalankan semua test
dbt docs generate && dbt docs serve  # buka dokumentasi
```