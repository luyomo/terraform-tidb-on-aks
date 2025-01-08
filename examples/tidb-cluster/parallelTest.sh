#!/bin/bash

# mysql -h 51.8.217.225 -u root -P 4000 test -e "explain analyze SELECT     security_id, market_type, comment, SUM(quantity), SUM(buy_quantity), SUM(buy_quantity_commission)   , SUM(sell_quantity), SUM(sell_quantity_commission), SUM(total_quantity), SUM(total_commission), SUM(margin), currency, SUM(amount), order_date FROM test.mocktable001 WHERE id = 4 AND order_date > '2024-07-21' AND order_date < '2024-07-23' GROUP BY security_id, market_type, comment, currency, order_date "


for num in {1..100}  ; do 
	mysql -h 51.8.217.225 -u root -P 4000 test -e "explain analyze SELECT     security_id, market_type, comment, SUM(quantity), SUM(buy_quantity), SUM(buy_quantity_commission)   , SUM(sell_quantity), SUM(sell_quantity_commission), SUM(total_quantity), SUM(total_commission), SUM(margin), currency, SUM(amount), order_date FROM test.mocktable001 WHERE id = $((num % 10)) AND order_date > '2024-07-21' AND order_date < '2024-07-23' GROUP BY security_id, market_type, comment, currency, order_date " &
done
