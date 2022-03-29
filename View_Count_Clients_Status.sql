select
	status,
    count(status)
from clients_status
group by status