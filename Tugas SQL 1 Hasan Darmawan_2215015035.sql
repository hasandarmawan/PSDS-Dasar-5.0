SELECT *FROM Invoice i 
GROUP BY BillingCountry;

-- 1. Buat tabel dengan ketentuan semua variabel dari tabel invoice jadikan satu value berdasarkan billing country dan jumlahkan dengan value yang sama
SELECT *,COUNT(BillingCountry) AS Banyak FROM Invoice i 
GROUP BY BillingCountry
ORDER BY Banyak DESC;


-- 2. Buat tabel dengan ketentuan semua variabel dari tabel invoice jadikan satu value berdasarkan billing country dan cari nilai Max dari setiap  BillingCountry disimpan sebagai variabel baru dengan nama maksimum diurutkan dari yang terbesar ke terkecil berdasarkan variabel maksimum
SELECT BillingCountry, MAX(Total) AS Maximum FROM invoice i
GROUP BY BillingCountry
ORDER BY Maximum DESC;
 

-- 3. Buat tabel dengan ketentuan Semua variabel dari tabel invoice dijadikan satu value berdasarkan billing country dan cari nilai mean dari setiap Country disimpan sebagai variabel baru dengan nama minimum Urutkan berdasarkan variabel minimum
SELECT BillingCountry, MIN(Total) AS Minimum FROM invoice i
GROUP BY BillingCountry
ORDER BY Minimum DESC;