SELECT
    tahun,
    bulan,
    ROUND(AVG(kurs_usd), 2) AS rata_usd,
    ROUND(AVG(kurs_eur), 2) AS rata_eur,
    ROUND(AVG(kurs_sgd), 2) AS rata_sgd,
    ROUND(AVG(kurs_myr), 2) AS rata_myr,
    MIN(kurs_usd)           AS min_usd,
    MAX(kurs_usd)           AS max_usd,
    COUNT(*)                AS jumlah_hari
FROM {{ ref('transform_kurs') }}
GROUP BY tahun, bulan
ORDER BY tahun, bulan