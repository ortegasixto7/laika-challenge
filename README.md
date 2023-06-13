# laika-challenge

# Iniciar app
    npm run serve

# Iniciar app con Docker Compose
    docker-compose up -d

# Modelo ER
![Laika Challenge Sixto Modelo ER](https://github.com/ortegasixto7/laika-challenge/blob/main/Laika_ERModel.png)


# Endpoints

### Listar las peliculas con paginación

    GET http://localhost:8080/api/movies/paginated/v1?page=1

### Obtener detalles de una pelicula por titulo

    GET http://localhost:8080/api/movies/detail/v1?title=movie title

### Crear pelicula (Requiere Auth)

    POST http://localhost:8080/api/movies/v1
    
    Request
    title -> String
    year -> Number
    rating -> Number
    rated -> String
    releasedDate -> String
    duration -> String
    plot -> String
    poster -> String
    genres -> Array String
    directors -> Array String
    writers -> Array String
    actors -> Array String
    languages -> Array String
    awards -> Array String
    ratings -> Array MovieRating

    MovieRating
    source -> String
    value -> String

### Actualizar pelicula (Requiere Auth)

    PATCH http://localhost:8080/api/movies/v1
    
    Request
    title -> String
    year -> Number
    rating -> Number
    rated -> String
    releasedDate -> String
    duration -> String
    plot -> String
    poster -> String
    genres -> Array String
    directors -> Array String
    writers -> Array String
    actors -> Array String
    languages -> Array String
    awards -> Array String
    ratings -> Array MovieRating

    MovieRating
    source -> String
    value -> String

### Eliminar pelicula (Requiere Auth)

    DELETE http://localhost:8080/api/movies/[MOVIE_ID]/v1

### Sign In

    POST http://localhost:8080/api/auth/sign-in/v1
    
    Request
    email -> String
    password -> String
