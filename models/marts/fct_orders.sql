select * from {{ source('sql_server', 'usuarios') }} u inner join {{ source('sql_server', 'pedidos') }} p
    on u.usuario_id = p.usuario_id