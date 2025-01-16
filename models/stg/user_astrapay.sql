with source as (
    SELECT
id, name, place_of_birth, date_of_birth,
 case 
 when date_of_birth > '1998-01-01' THEN 'MUDA'
        ELSE 'TUA'
        END AS generasi,
 nationality, gender, profession, 
country, province, city, district, village, address, rt_number, rw_number, postal_code, 
created_at, updated_at
FROM {{ source('northwind', 'user') }}
)
SELECT 
*
FROM source