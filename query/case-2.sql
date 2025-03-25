# CASE 2 
# Menampilkan 5 kota dengan total item terjual paling banyak, urutan dari terbesar ke terkecil

select s.StoreID, 
	s.StoreLocation,
	sum(t.item_quantity) as TotalItemSold
from store s
join transaction t on t.store_id = s.StoreID
group by s.StoreID
order by TotalItemSold desc
limit 5;


