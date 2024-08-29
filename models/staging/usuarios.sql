select
    *
from {{ source('sql_server', 'usuarios') }}