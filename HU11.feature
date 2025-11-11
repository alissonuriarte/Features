Feature: Acceso rápido al botón de pánico desde el panel
  Como usuaria
  Quiero tener acceso directo al botón de pánico desde el panel principal
  Para poder activarlo rápidamente en caso de emergencia

  @exitoso
  Scenario: Activación rápida
    Given que la usuaria presiona el botón
    When lo mantiene pulsado
    Then debe activarse el modo de alerta inmediatamente

  @exitoso
  Scenario: Confirmación visual
    Given que el botón fue activado
    When la alerta se envía
    Then el panel debe mostrar una animación de confirmación