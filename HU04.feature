Feature: Validación de cuenta por correo
  Como usuaria nueva
  Quiero confirmar mi cuenta mediante un enlace enviado a mi correo
  Para verificar mi identidad y activar el acceso

  @exitoso
  Scenario: Correo de validación enviado
    Given que la usuaria completa su registro
    When el sistema genera la cuenta
    Then debe enviarse un correo con un enlace de verificación

  @fallido
  Scenario: Enlace expirado
    Given que la usuaria intenta usar un enlace antiguo
    When hace clic en él
    Then debe mostrarse el mensaje “El enlace ha expirado. Solicite uno nuevo”
    And no se debe activar la cuenta

    @correo_no_encontrado
    Scenario: Correo no encontrado
      Given que la usuaria ingresa un correo no registrado
      When intenta validar su cuenta
      Then el sistema debe mostrar “Correo no encontrado”
      And no se debe activar ninguna cuenta
      