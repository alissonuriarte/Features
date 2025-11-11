Feature: Activación por comando de voz
  Como usuaria
  Quiero poder activar el botón de pánico mediante una palabra clave
  Para enviar la alerta sin necesidad de tocar el teléfono

  @exitoso
  Scenario: Detección de voz
    Given que el reconocimiento de voz está activo
    When la usuaria pronuncia la palabra clave
    Then el sistema debe activar automáticamente la alerta

  @fallido
  Scenario: Falsa detección
    Given que se pronunció algo similar
    When el sistema detecta error
    Then debe mostrar un aviso de “No se detectó comando válido”
    And no debe activar la alerta
    @configuracion
    Scenario: Configuración de palabra clave
        Given que la usuaria accede a la configuración de voz
        When establece una nueva palabra clave
        Then el sistema debe guardar la nueva configuración
        And confirmar “Palabra clave actualizada con éxito”