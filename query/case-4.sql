# CASE 4 
# Menampilkan 5 toko yang menjual product paling banyak pada bulan januari (akumulasi penjualan produk yang terjual hanya di bulan januari di semua tahun) , urutan dari terbesar ke terkecil

select s.StoreID,
	s.StoreName,
	sum(t.item_quantity) as Store_with_Most_Sales_Quantity_January
from store s
join transaction t on s.StoreID = t.store_id 
where extract(month from t.trx_date) = 1
group by s.StoreName 
order by Store_with_Most_Sales_Quantity desc
limit 5;