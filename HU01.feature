Feature: Registro seguro de una nueva usuaria
  Como usuaria
  Quiero registrarme con mis datos personales (nombre, correo y contraseña)
  Para acceder a la aplicación de manera segura

  @exitoso
  Scenario: Registro exitoso
    Given que la usuaria está en la pantalla de registro
    When completa todos los campos obligatorios con datos válidos
    And presiona "Registrarse"
    Then el sistema debe crear una cuenta nueva
    And mostrar un mensaje de confirmación “Registro exitoso”

  @fallido
  Scenario: Registro con correo ya existente
    Given que la usuaria ingresa un correo electrónico ya registrado
    When intenta registrarse
    Then el sistema debe mostrar un mensaje “Este correo ya está en uso”
    And no debe crear una cuenta nueva

    @contraseña_insegura
    Scenario: Registro con contraseña insegura
      Given que la usuaria ingresa una contraseña que no cumple con los requisitos de seguridad
      When intenta registrarse
      Then el sistema debe mostrar un mensaje “La contraseña debe tener al menos 8 caracteres, incluir una letra mayúscula, una minúscula y un número”
      And no debe crear una cuenta nueva