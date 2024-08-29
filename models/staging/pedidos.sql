select
    *
from {{ source('sql_server', 'pedidos') }}