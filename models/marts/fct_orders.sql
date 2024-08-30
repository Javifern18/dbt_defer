select
    u.usuario_id,
    p.pedido_id,
    p.producto,
    p.fecha_pedido,
    'defer_test' as defer_test

from {{ ref('usuarios') }} u inner join {{ ref('pedidos') }} p
    on u.usuario_id = p.usuario_id