from db import obtener_conexion


def insertar_usuario(nombre,email,telefono,apellido):
    conexion = obtener_conexion()
    with conexion.cursor() as cursor:
        cursor.execute("INSERT INTO Clientes(nombre, email, telefono, apellido) VALUES (%s, %s, %s, %s)",
                    (nombre, email, telefono, apellido ))

    conexion.commit()
    conexion.close()


def obtener_usuario():
    conexion = obtener_conexion()
    Clientes = []
    with conexion.cursor() as cursor:
        cursor.execute("SELECT id, nombre, email, telefono, apellido FROM Clientes")
        Clientes = cursor.fetchall()
    conexion.close()
    return Clientes


def eliminar_usuario(id):
    conexion = obtener_conexion()
    with conexion.cursor() as cursor:
        cursor.execute("DELETE FROM Clientes WHERE id = %s",(id,))
    conexion.commit()
    conexion.close()

def obtener_usuario_por_id(id):
    conexion = obtener_conexion()
    with conexion.cursor() as cursor:
        cursor.execute(
            "SELECT id, nombre,apellido, telefono, email FROM Clientes WHERE id = %s",(id))
        Cliente = cursor.fetchone()
        conexion.close()
        return Cliente

def actualizar_usuario(nombre,email,telefono,apellido,id):
    conexion = obtener_conexion()
    with conexion.cursor() as cursor:
        cursor.execute("UPDATE Clientes SET nombre = %s, email = %s, telefono = %s, apellido = %s WHERE id = %s",
                        (nombre, email,  telefono, apellido, id))
    conexion.commit()
    conexion.close()
    
                            