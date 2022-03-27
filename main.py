'''
Autor: Bruno Leanza 24/3/2022
'''

'''
Este programa en python resuelve el ejercicio 22 de la guía 1
'''


'''
Funciones auxiliares
'''


def empty(cad):
    return len(cad) == 0


'''
La 1ra parte trata de los métodos para convertir la cadena original a ascii y luego a binario
'''


def char_to_ascii(char):
    return ord(char)


# Devuelve una lista de los codigos ascii
def string_to_ascii(cad):
    ascii_list = []
    for char in cad:
        ascii_list.append(char_to_ascii(char))
    return ascii_list


# Convierte un numero decimal positivo a binario
def dec_to_bin(num):
    return bin(num).replace("0b", "")


# Convierte una lista de caracteres ascii a una cadena binaria
def ascii_to_bin(cad):
    result = []
    for char in cad:
        result.append(dec_to_bin(char))
    return result


'''
La 2da parte trata de la paridad
'''


# Cuenta los 1's de una cadena de bits
def count_ones(string):
    counter = 0
    for bit in string:
        if bit == "1":
            counter += 1
    return counter


# Calcula la paridad a una cadena y agrega el bit de paridad al final
def calculate_parity(string, pair):
    counter = count_ones(string)
    is_pair = (counter % 2 == 0)

    # Paridad par
    if pair:
        if is_pair:
            string += "0"
        else:
            string += "1"

    # Paridad impar
    else:
        if is_pair:
            string += "1"
        else:
            string += "0"

    return string


# Realiza la paridad en bloque a una lista de bits. par = True, usa paridad par, si False usa la impar
# El bit de paridad se agrega al final de la cadena
# Retorna una cadena con todos los bloques anidados
def parity(blocks, pair=True):
    result = ""
    for block in blocks:
        parity_block = calculate_parity(block, pair)
        result += parity_block

    return result


'''
3ra parte es sobre CRC
'''


# Operacion xor con 2 bits
def xor(bit1, bit2):
    if (bit1 == 1 and bit2 == 0) or (bit1 == 0 and bit2 == 1):
        return 1
    else:
        return 0


# Divide dos cadenas de bits del mismo tamaño utilizando la operacion xor
def divide(str1, str2):
    result = ""
    for b1, b2 in zip(str1, str2):
        b1 = int(b1)
        b2 = int(b2)
        b3 = xor(b1, b2)
        result += str(b3)
    return result


# Elimina los 0's al principio de la cadena
def remove_left_zeros(cad):
    while not empty(cad) and cad[0] == "0":
        cad = cad.replace("0", "", 1)
    return cad


# Agrega los ceros al final de la cadena necesarios para realizar el CRC
def add_zeros(cad, num):
    for n in range(num):
        cad += "0"
    return cad


# Chequea si en la cadena solo tiene ceros
def are_all_zeros(cad):
    for c in cad:
        if c == "1":
            return False
    return True


# Este método rellena los ceros a la izquierda cuando el remanente es menor a la longitud del crc
def refill(remainder, size):
    while len(remainder) < size:
        remainder = "0" + remainder
    return remainder


# Esta es la funcion principal del crc
# el crc puede ser cualquiera que le pase el usuario
# el booleano operations sirve para mostrar las operaciones xor en cada iteracion
def CRC(bits, crc, operations=False):
    # El tamaño del polinomio del crc
    size = len(crc)

    # Agregar los zeros al final
    cad = add_zeros(bits, size - 1)

    iterations = 0
    while True:

        # El bucle corta cuando alguna de las siguientes condiciones se cumple
        # 1) La cadena restante son todos ceros
        if are_all_zeros(cad):
            break

        # Quitar los ceros de la izq
        cad = remove_left_zeros(cad)

        # 2) El tamaño de la cadena es menor al tamaño del crc
        if len(cad) < size:
            break

        # Parto la cadena en dos partes:
        # la primera parte es el dividendo de tamaño igual al crc
        # la 2da es el resto de la cadena
        dividend = cad[0:size]
        rest = cad[size:]

        # aplicar xor
        result = divide(dividend, crc)

        if operations:
            print("\n")
            print("Iteracion " + str((iterations+1)))
            print(cad)
            print(crc)
            print("-" * size)
            print(result)

        # Actualizar el resultado en la cadena original
        cad = result + rest
        iterations += 1

    remainder = cad[-(size - 1):]
    remainder = refill(remainder, size-1)
    return bits + "|" + remainder


def main():
    cadena = input("Ingrese una cadena: ")

    print("Lista equivalente en ascii: ")
    ascii = string_to_ascii(cadena)
    print(ascii)

    print("Lista equivalente en bits: ")
    bits = ascii_to_bin(ascii)
    print(bits)

    bits = parity(bits, False)
    print("\n")
    print("Paridad impar por bloques: ")
    print(bits)

    print("\n")
    print("CRC-6-GSM: ")
    crc6 = CRC(bits, "1101111")
    print(crc6)

    print("\n")
    print("CRC-8-Bluetooth: ")
    crc8 = CRC(bits, "110100111")
    print(crc8)


main()
