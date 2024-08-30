select
    u.usuario_id,
    p.pedido_id,
    p.producto,
    p.fecha_pedido,
    'defer_test' as defer_test,
    'defer_test2' as defer_test2,
    'defer_test3' as defer_test3,
    'ci_test' as ci_test,
    'ci_test2' as ci_test2,
    'ci_test3' as ci_test3,
    'ci_test4' as ci_test4,
    'ci_test5' as ci_test5,
    'ci_test6' as ci_test6,
    'ci_test7' as ci_test7         

from {{ ref('usuarios') }} u inner join {{ ref('pedidos') }} p
    on u.usuario_id = p.usuario_id