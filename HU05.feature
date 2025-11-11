Feature: Cierre de sesión seguro
  Como usuaria
  Quiero cerrar sesión correctamente
  Para asegurar que nadie más acceda a mi información personal

  @exitoso
  Scenario: Cierre exitoso
    Given que la usuaria presiona “Cerrar sesión”
    When confirma la acción
    Then el sistema debe cerrar su sesión
    And mostrar la pantalla de inicio

  @fallido
  Scenario: Error en cierre
    Given que ocurre un problema técnico
    When intenta salir
    Then debe mostrarse “Error al cerrar sesión. Intente nuevamente”
    And la sesión no debe cerrarse
    @sesion_inactiva
    Scenario: Sesión inactiva
      Given que la usuaria intenta cerrar sesión después de un período de inactividad
      When presiona “Cerrar sesión”
      Then el sistema debe redirigirla a la pantalla de inicio de sesión
      And mostrar el mensaje “Sesión expirada. Por favor, inicie sesión nuevamente”