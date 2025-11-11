Feature: Edición y personalización de mensajes de alerta enviados
  Como usuaria
  Quiero personalizar el contenido de los mensajes de alerta que se envían a mis contactos
  Para que incluyan la información más útil según mi necesidad

  @exitoso
  Scenario: Mensaje editado
    Given que la usuaria cambia el texto predeterminado
    When guarda la configuración
    Then las futuras alertas deben enviarse con el mensaje personalizado

  @exitoso
  Scenario: Reestablecer mensaje
    Given que la usuaria desea volver al mensaje original
    When selecciona “Restablecer”
    Then la app debe restaurar el texto predeterminado
    @fallido
    Scenario: Mensaje vacío
      Given que la usuaria borra todo el texto del mensaje
      When intenta guardar la configuración
      Then el sistema debe mostrar “El mensaje no puede estar vacío”
      And no debe guardar cambios hasta que se ingrese texto válido