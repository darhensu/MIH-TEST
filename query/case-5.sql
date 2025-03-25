# CASE 5
# Menampilkan 5 email customer yang berasal dari pemerintahan (.gov) yang memiliki total pembelian terbesar 
# di kota yang paling banyak menjual product (total item quantity) paling banyak kepada pembeli perempuan. 
# HINT : cari terlebih dahulu kota apa yang paling banyak menjual barang untuk perempuan. 
# kemudian di kota tersebut cari 5 customer dari pemerintahan yang melakukan pembelian terbesar

# Cari kota dengan total penjualan terbanyak kepada perempuan
select s.StoreLocation, # Harusnya ini bisa pake CTE tapi MySQL disini bisanya pakai subqueries
	sum(t.item_quantity) as Total_Item_Sold_by_Female
from store s
join transaction t on t.store_id = s.StoreID 
join customer c on c.CustomerID = t.customer_id 
join gender g on g.GenderID = c.GenderID 
where g.Gender = 'Female'
group by s.StoreLocation 
order by Total_Item_Sold_by_Female desc
limit 1

# Cari 5 customer dari pemerintah dengan pembelian terbesar di kota tersebut
select c.CustomerID,
       c.Email,
       s.StoreLocation, 
       sum(t.item_price*t.item_quantity) as TotalExpenses 
from customer c 
join transaction t on t.customer_id = c.CustomerID 
join store s on s.StoreID = t.store_id 
where s.StoreLocation = (
    select s.StoreLocation # Subqueries
    from store s
    join transaction t on t.store_id = s.StoreID 
    join customer c on c.CustomerID = t.customer_id 
    join gender g on g.GenderID = c.GenderID 
    where g.Gender = 'Female'
    group by s.StoreLocation 
    order by sum(t.item_quantity) desc
    limit 1
) 
and c.Email like '%.gov%'
group by c.CustomerID, c.Email
order by TotalExpenses desc
limit 5;



