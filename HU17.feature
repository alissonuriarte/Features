Feature: Cancelación segura de alertas mediante código personal
  Como usuaria
  Quiero cancelar una alerta de emergencia solo mediante un código personal
  Para evitar que un agresor pueda desactivarla sin autorización

  @exitoso
  Scenario: Cancelación válida
    Given que la usuaria activó una alerta
    When ingresa su código correcto
    Then la alerta debe cancelarse
    And debe mostrarse un mensaje de confirmación

  @fallido
  Scenario: Código incorrecto
    Given que la usuaria ingresa un código inválido
    When intenta cancelar
    Then el sistema debe mantener la alerta activa
    And mostrar un mensaje “Código incorrecto. Intente de nuevo.”
    
    @intentos_excedidos
    Scenario: Exceso de intentos
        Given que la usuaria ingresa un código incorrecto varias veces
        When supera el límite de intentos permitidos
        Then el sistema debe mantener la alerta activa
        And mostrar un mensaje “Demasiados intentos fallidos. La alerta sigue activa.”