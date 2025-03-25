# CASE 3 
# Menampilkan 5 product yang paling banyak dibeli oleh laki laki, urutan dari terkecil ke terbesar

select p.ProductID,
	p.ProductName,
	sum(t.item_quantity) as Total_Item_Sold_by_Male
from product p
join transaction t on t.product_id = p.ProductID 
join customer c on t.customer_id = c.CustomerID 
join gender g  on g.GenderID = c.GenderID 
where g.gender = 'Male'
group by p.ProductName
order by Total_Item_Sold_by_Male desc
limit 5;
