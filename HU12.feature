Feature: Activación del botón de pánico en modo sin conexión
  Como usuaria
  Quiero poder activar el botón de pánico incluso sin conexión a internet
  Para que la app almacene la alerta y la envíe automáticamente cuando se restablezca la red

  @exitoso
  Scenario: Activación sin conexión
    Given que la usuaria no tiene acceso a internet
    When presiona el botón de pánico
    Then el sistema debe guardar la alerta localmente con hora y ubicación

  @exitoso
  Scenario: Reenvío automático al reconectarse
    Given que hay alertas pendientes
    When la app detecta conexión nuevamente
    Then debe enviar automáticamente las alertas almacenadas
    And notificar “Alerta enviada con éxito”
