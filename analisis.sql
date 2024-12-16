/*
3. Análisis

Especificación Suplementaria

Verbos y Sustantivos

Verbos: Reproducir, pausar, buscar, crear, seguir, eliminar.

Sustantivos: Usuario, artista, playlist, canción, álbum, género.

Entidades, Atributos y Relaciones

Entidades:

Usuario: nombre, email, contraseña.

Playlist: nombre, fecha de creación.

Canción: título, duración, género.

Artista: nombre, nacionalidad.

Álbum: título, fecha de lanzamiento.

Relaciones:

Un usuario puede crear varias playlists.

Una playlist contiene varias canciones.

Una canción pertenece a un álbum.

Un álbum es creado por un artista.

Expresiones Nominales

Necesidades: Escuchar música de forma personalizada.

Requerimientos: Navegación fácil, tiempo de carga rápido.

Requisitos:

Funcionales: Buscar canciones, seguir artistas, reproducir música.

No funcionales: Diseño responsivo, tiempo de respuesta menor a 2 segundos.

Modelo del Dominio

Diagrama de Entidades (Modelo de Dominio): Incluirá entidades como Usuario, Playlist, Artista, Canción y Álbum.

Diccionario de Datos: Definición de atributos de cada entidad.

Diagrama de Datos (EE-R): Relación entre las entidades mencionadas.
*/

Script DDL SQL:

CREATE TABLE Usuario (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    contraseña VARCHAR(50)
);
CREATE TABLE Playlist (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id)
);

