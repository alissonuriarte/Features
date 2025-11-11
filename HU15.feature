Feature: Envío de ubicación en tiempo real
  Como usuaria
  Quiero que al activarse la alerta se envíe mi ubicación en tiempo real
  Para que mis contactos de emergencia puedan encontrarme fácilmente

  @exitoso
  Scenario: Envío correcto
    Given que la usuaria activa la alerta
    When se procesa la señal
    Then los contactos deben recibir la ubicación exacta por mensaje o notificación

  @fallido
  Scenario: GPS desactivado
    Given que la ubicación no está habilitada
    When intenta enviar la alerta
    Then debe mostrarse “Active su ubicación para continuar”
    And no se debe enviar la alerta

    @señal_debil
    Scenario: Señal GPS débil
      Given que la usuaria está en un área con señal débil
      When intenta enviar la alerta
      Then debe mostrarse “Señal GPS débil. Intente moverse a un área abierta”
      And no se debe enviar la alerta
