CREATE TABLE dispositivos (
	ip_dispositivo VARCHAR(15) PRIMARY KEY NOT NULL,
    tipo_dis VARCHAR(30),
    estado_dis BOOLEAN
);

CREATE TABLE habitaciones (
	n_habitacion INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_estado_hab INT,
    estado_hab BOOLEAN
);

ALTER TABLE dispositivos ADD COLUMN n_habitacion INT;
ALTER TABLE dispositivos ADD FOREIGN KEY (n_habitacion) REFERENCES habitaciones(n_habitacion);