Feature: Activación manual del botón de pánico
  Como usuaria
  Quiero acceder a guías rápidas sobre cómo realizar una denuncia
  Para entender mis derechos y el procedimiento legal

  @exitoso
  Scenario: Activación exitosa
    Given que la usuaria mantiene presionado el botón
    When se cumple el tiempo de activación
    Then debe enviarse la alerta con su ubicación actual

  @fallido
  Scenario: Cancelación antes del envío
    Given que la usuaria se equivocó
    When suelta el botón antes del tiempo límite
    Then el sistema debe cancelar el envío de la alerta
