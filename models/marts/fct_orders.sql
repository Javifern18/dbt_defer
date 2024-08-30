select
    u.usuario_id,
    p.pedido_id,
    p.producto,
    p.fecha_pedido,
    'defer_test' as defer_test,
    'defer_test2' as defer_test2,
    'defer_test3' as defer_test3

from {{ ref('usuarios') }} u inner join {{ ref('pedidos') }} p
    on u.usuario_id = p.usuario_id