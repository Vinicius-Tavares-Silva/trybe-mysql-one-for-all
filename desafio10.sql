DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE musics INT;
SELECT 
    COUNT(*)
FROM
    SpotifyClone.hist_reproducoes hr
WHERE
    hr.usuario_id = user_id INTO musics;
    RETURN musics;
END $$

DELIMITER ;
