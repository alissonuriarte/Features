Feature: Inicio de sesión seguro mediante correo electrónico y contraseña
  Como usuaria registrada
  Quiero poder iniciar sesión con mi correo y contraseña
  Para acceder a mi cuenta de manera segura y privada

  @exitoso
  Scenario: Credenciales correctas
    Given que la usuaria ingresa su correo y contraseña válidos
    When presiona “Iniciar sesión”
    Then el sistema debe redirigirla al panel principal

  @fallido
  Scenario: Credenciales incorrectas
    Given que la usuaria ingresa datos inválidos
    When intenta acceder
    Then el sistema debe mostrar “Correo o contraseña incorrectos”
    And no debe permitir el acceso al panel principal
    @campo_vacio
    Scenario: Campo de correo vacío
        Given que la usuaria deja el campo de correo vacío
        When intenta iniciar sesión
        Then el sistema debe mostrar “El campo de correo es obligatorio”
        And no debe permitir el acceso al panel principal