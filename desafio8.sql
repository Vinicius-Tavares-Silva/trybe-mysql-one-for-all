DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON SpotifyClone.usuarios
    FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.usuarios_artistas 
WHERE
    usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.hist_reproducoes 
WHERE
    usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
