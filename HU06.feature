Feature: Autenticación mediante PIN o huella
  Como usuaria frecuente
  Quiero poder ingresar mediante PIN o huella digital
  Para acceder más rápido sin perder seguridad

  @exitoso
  Scenario: Acceso con PIN correcto
    Given que la usuaria ingresa su PIN
    When coincide con el registrado
    Then el sistema debe permitir el acceso

  @fallido
  Scenario: Huella no reconocida
    Given que la usuaria intenta ingresar con una huella diferente
    When el sistema la valida
    Then debe mostrar “Huella no reconocida. Intente nuevamente”
    And no debe permitir el acceso
