Feature: Visualización del estado de conexión
  Como usuaria
  Quiero ver un indicador del estado de conexión (en línea o sin conexión)
  Para saber si la app puede enviar alertas correctamente

  @exitoso
  Scenario: Conexión activa
    Given que la app está conectada
    When la usuaria mira la parte superior del panel
    Then debe verse el indicador “Conectado”

  @fallido
  Scenario: Sin conexión
    Given que no hay acceso a internet
    When intenta usar funciones en línea
    Then debe mostrarse “Sin conexión. Algunas funciones no estarán disponibles”
    And algunas funciones no deben estar disponibles
