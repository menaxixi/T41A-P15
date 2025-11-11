CREATE TABLE productos (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  precio NUMERIC NOT NULL,
  cantidad INT NOT NULL
);

CREATE TABLE dep(
  id_dep SERIAL PRIMARY KEY,
  nombre_dep TEXT NOT NULL
);

CREATE TABLE empleado (
  id_emp SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  id_dep INT REFERENCES dep(id_dep) 
);
