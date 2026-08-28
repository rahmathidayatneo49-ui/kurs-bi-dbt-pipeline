SELECT
    date AS tanggal,
    usd AS kurs_usd,
    sgd AS kurs_sgd,
    myr AS kurs_myr,
    eur AS kurs_eur
FROM {{ source('kurs_bi', 'kurs_harian') }}