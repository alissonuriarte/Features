Feature: Llamada directa a la policía o red de apoyo desde la aplicación
  Como usuaria
  Quiero llamar directamente a la policía o a mi red de apoyo desde la aplicación
  Para obtener ayuda sin tener que marcar manualmente

  @exitoso
  Scenario: Llamada exitosa
    Given que la usuaria selecciona la opción “Llamar”
    When el sistema marca automáticamente el número configurado
    Then debe iniciar la llamada correctamente
    And mostrar una notificación de que la llamada está en curso

  @fallido
  Scenario: Error en la llamada
    Given que la línea está ocupada o no hay señal
    When se intenta realizar la llamada
    Then el sistema debe mostrar un aviso de fallo
    And sugerir a la usuaria que reintente la llamada o use otra opción de alerta

    @contacto_no_configurado
    Scenario: Contacto no configurado
      Given que la usuaria intenta llamar sin tener un número configurado
      When selecciona la opción “Llamar”
      Then el sistema debe mostrar el mensaje “No hay contacto configurado. Por favor, agregue un número en la configuración.”
      And no debe iniciar ninguna llamada
