-- Migrations will appear here as you chat with AI

create table rol (
  id bigint primary key generated always as identity,
  nombre text,
  descripcion text,
  fecha_creacion timestamp with time zone default now(),
  fecha_actualizacion timestamp with time zone
);

create table permiso (
  id bigint primary key generated always as identity,
  nombre text,
  descripcion text,
  fecha_creacion timestamp with time zone default now(),
  fecha_actualizacion timestamp with time zone
);

create table usuario (
  id bigint primary key generated always as identity,
  nombre text,
  email text unique,
  "contraseña" text,
  rol bigint references rol (id)
);

create table entrada_de_blog (
  id bigint primary key generated always as identity,
  "título" text,
  contenido text,
  autor_id bigint references usuario (id),
  fecha_creacion timestamp with time zone default now(),
  fecha_actualizacion timestamp with time zone
);

create table comentario (
  id bigint primary key generated always as identity,
  contenido text,
  autor_id bigint references usuario (id),
  fecha_creacion timestamp with time zone default now()
);

create table tema_de_foro (
  id bigint primary key generated always as identity,
  "título" text,
  contenido text,
  autor_id bigint references usuario (id),
  fecha_creacion timestamp with time zone default now(),
  fecha_actualizacion timestamp with time zone
);

create table respuesta_del_foro (
  id bigint primary key generated always as identity,
  contenido text,
  autor_id bigint references usuario (id),
  tema_foro_id bigint references tema_de_foro (id),
  fecha_creacion timestamp with time zone default now()
);

create table rol_x_permiso (
  id bigint primary key generated always as identity,
  id_rol bigint references rol (id),
  id_permiso bigint references permiso (id)
);

alter table usuario
rename column rol to id_rol;

alter table usuario
rename column "contraseña" to password;