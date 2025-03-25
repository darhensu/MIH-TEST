# CASE 1
# Menampilkan 5 nama lengkap customer dengan pengeluaran paling banyak, urutan dari terbesar ke terkecil

select c.CustomerID,
	concat(c.FirstName, ' ', c.LastName) as FullName,
	sum(t.item_quantity*t.item_price) as TotalExpenses
from customer c
join transaction t on c.CustomerID = t.customer_id
group by c.CustomerID
order by TotalExpenses desc
limit 5;


