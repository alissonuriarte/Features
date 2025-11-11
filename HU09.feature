Feature: Notificaciones visuales en el panel principal
  Como usuaria
  Quiero visualizar notificaciones o iconos de alerta en el panel principal
  Para saber rápidamente si tengo alertas recientes, mensajes o recomendaciones nuevas

  @exitoso
  Scenario: Notificación disponible
    Given que la usuaria tiene una nueva alerta o mensaje
    When accede al panel principal
    Then debe mostrarse un ícono o punto rojo indicando una nueva notificación

  @exitoso
  Scenario: Sin notificaciones
    Given que no hay alertas o mensajes pendientes
    When la usuaria ingresa al panel
    Then no debe mostrarse ningún ícono de notificación
