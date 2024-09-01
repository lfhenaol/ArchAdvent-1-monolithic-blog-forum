-- Insert sample data into rol table
insert into
  rol (nombre, descripcion)
values
  (
    'Admin',
    'Administrator role with full permissions'
  ),
  (
    'Editor',
    'Editor role with permissions to modify content'
  ),
  ('Viewer', 'Viewer role with read-only access');

-- Insert sample data into permiso table
insert into
  permiso (nombre, descripcion)
values
  ('Create', 'Permission to create new content'),
  ('Edit', 'Permission to edit existing content'),
  ('Delete', 'Permission to delete content'),
  ('View', 'Permission to view content');

-- Insert sample data into usuario table
insert into
  usuario (nombre, email, password, id_rol)
values
  ('Alice', 'alice@example.com', 'password123', 1),
  ('Bob', 'bob@example.com', 'securepass', 2),
  ('Charlie', 'charlie@example.com', 'mypassword', 3);

-- Insert sample data into entrada_de_blog table
insert into
  entrada_de_blog (título, contenido, autor_id)
values
  (
    'First Blog Post',
    'This is the content of the first blog post.',
    1
  ),
  (
    'Second Blog Post',
    'This is the content of the second blog post.',
    2
  );

-- Insert sample data into comentario table
insert into
  comentario (contenido, autor_id)
values
  ('Great post!', 3),
  ('Very informative.', 2);

-- Insert sample data into tema_de_foro table
insert into
  tema_de_foro (título, contenido, autor_id)
values
  (
    'Forum Topic 1',
    'This is the first forum topic.',
    1
  ),
  (
    'Forum Topic 2',
    'This is the second forum topic.',
    2
  );

-- Insert sample data into respuesta_del_foro table
insert into
  respuesta_del_foro (contenido, autor_id, tema_foro_id)
values
  ('I agree with this topic.', 3, 1),
  ('Interesting perspective.', 1, 2);

-- Insert sample data into rol_x_permiso table
insert into
  rol_x_permiso (id_rol, id_permiso)
values
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (2, 2),
  (2, 4),
  (3, 4);