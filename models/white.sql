select description, 
(amount / 100)*-1 as amount, 
balance / 100 as balance, to_timestamp(time) :: DATE as date, 
card
from merged_spending
where description NOT IN('З гривневого рахунку ФОП', 'ФІЛІЯ НЕСТЛЕ БІЗНЕС СЕРВІС В ЄВРОПІ', '431414****5253', '414949****5809','545708****6696', '414960****7023')