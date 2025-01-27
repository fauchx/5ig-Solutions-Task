from netmiko import ConnectHandler
cisco = {
    "device_type": "cisco_ios",
    "ip": "sandbox-iosxr-1.cisco.com",
    "username":"admin",
    "password":"C1sco12345",
 }
try:
    net_connection = ConnectHandler(**cisco)
    net_connection.enable()
    print("Estableció conexion")
    config = net_connection.send_command('show running-config')

    filew = "netmiko_config.txt"
    print("Creando archivo")
    with open(filew, "w") as file:
        file.write(config)
    print(f"Configuración guardada en {filew}")
    net_connection.disconnect
except Exception as e:
    print(f"Error: {e}")
