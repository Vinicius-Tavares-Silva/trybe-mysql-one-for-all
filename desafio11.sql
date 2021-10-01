CREATE VIEW cancoes_premium AS
    SELECT 
        (SELECT 
                cancao
            FROM
                SpotifyClone.cancoes c
            WHERE
                c.cancao_id = hr.cancao_id) AS `nome`,
        COUNT(*) AS `reproducoes`
    FROM
        SpotifyClone.hist_reproducoes hr
            INNER JOIN
        SpotifyClone.usuarios u ON u.usuario_id = hr.usuario_id
    WHERE
        u.plano_id IN (2 , 3)
    GROUP BY `nome`
    ORDER BY `nome`
;
