SELECT
    tanggal,
    kurs_usd,
    kurs_sgd,
    kurs_myr,
    kurs_eur,
    -- Rata-rata semua mata uang
    ROUND((kurs_usd + kurs_sgd + kurs_myr + kurs_eur) / 4, 2) 
        AS rata_rata_kurs,
    -- Ekstrak bulan dan tahun
    EXTRACT(MONTH FROM tanggal) AS bulan,
    EXTRACT(YEAR FROM tanggal) AS tahun
FROM {{ ref('raw_kurs') }}