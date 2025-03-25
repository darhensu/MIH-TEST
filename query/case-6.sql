# CASE 6
# Menampilkan 5 nama lengkap customer dengan pengeluaran paling banyak, 
# disertai dengan informasi produk apa saja yang pernah dibeli (unique), 
# dan informasi toko mana saja tempat produk tersebut dijual (unique)

select concat(c.FirstName, ' ', c.LastName) as FullName,
	sum(t.item_quantity*t.item_price) as TotalExpenses,
	group_concat(distinct p.ProductName) as PurchasedProducts,
	group_concat(distinct s.StoreName) as StoreLocations
from customer c 
join transaction t on c.CustomerID = t.customer_id 
join product p on p.ProductID = t.product_id 
join store s on s.StoreID = t.store_id 
group by c.CustomerID , FullName
order by TotalExpenses desc 
limit 5