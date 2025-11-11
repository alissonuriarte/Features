Feature: Recuperación de contraseña
  Como usuaria
  Quiero recuperar mi contraseña mediante mi correo registrado
  Para restablecer el acceso a mi cuenta

  @exitoso
  Scenario: Solicitud de recuperación exitosa
    Given que la usuaria ingresa su correo válido
    When presiona “Olvidé mi contraseña”
    Then el sistema debe enviar un enlace de restablecimiento al correo

  @fallido
  Scenario: Correo no registrado
    Given que la usuaria escribe un correo inexistente
    When intenta recuperar su cuenta
    Then el sistema debe mostrar “Correo no registrado”
    And no debe enviar ningún enlace de restablecimiento
    
    @formato_invalido
    Scenario: Formato de correo inválido
      Given que la usuaria ingresa un correo con formato incorrecto
      When intenta recuperar su cuenta
      Then el sistema debe mostrar “Formato de correo inválido”
      And no debe enviar ningún enlace de restablecimiento