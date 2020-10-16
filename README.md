# aws_automation_terraform

Ejemplo de Creación y despliegue de instancias AWS usando Terraform.

  - Configura la infraestructura de Red y Seguridad en AWS 
  - Crea 3 instancias independientes EC2 y las despliega 
  - Inicia Servicios WEB basados en APACHE en cada Instancia 


### Tecnologias 

Desarrollado usando tecnologias:

* [Terraform] – Definición de infraestructura a alto nivel.
* [Apache] – Servidor WEB.
* [AWS] – Servicio Cloud.
* [YAML] – Formato de Intercambio de Datos.

And of course Dillinger itself is open source with a [public repository][dill]
 on GitHub.

### Instalación

Para la instalación requiere [Terraform](https://www.terraform.io/) y una Cuenta AWS [AWS](https://aws.amazon.com/es/console/).

Clonar el proyecto e ingresar al directorio creado

```sh
$ git clone https://github.com/profefonso/aws_automation_terraform.git
$ cd aws_automation_terraform
```

Agregar las Credenciales de AWS en el archivo

```sh
my_access_key = "YOUR_ACCESS_KEY"
my_secret_key = "YOUR_SECRET_KEY" 
```

### Probar Despliegue en AWS

#### Iniciando la configuracion: Para iniciar el entorno terraform usamos el comando.

```sh
$ terraform init 
```
Este comando instalará todos los binarios del proveedor y preparará el directorio de trabajo para trabajar con él.


#### Creado el Plan de despliegue:

```sh
$ terraform plan 
```
Este comando lee el código de configuración de main.tf, compara el estado deseado de la infraestructura con lo que realmente existe. Luego crea un plan de qué hacer para que pueda alcanzar su estado deseado y muestra lo que se cambiará.


#### Desplegando la Infraestructura:

```sh
$ terraform apply 
```
Este comando ejecuta terraform plan al principio y luego procede a crear su infraestructura.
Si ingresamos a la consola de AWS y Validamos que la Infraestructura se ha creado exitosamente.

#### Destruir la Infraestructura creada:

```sh
$ terraform destroy 
```
Este comando lee el código de configuración de main.tf, compara el estado deseado de la infraestructura con lo que realmente existe. Luego crea un plan de qué hacer para que pueda alcanzar su estado deseado y muestra lo que se cambiará.


License
----

MIT
