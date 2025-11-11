Feature: Visualización del panel principal
  Como usuaria
  Quiero ver un panel principal con accesos rápidos al botón de pánico, contactos, chatbot y perfil
  Para moverme fácilmente dentro de la aplicación

  @exitoso
  Scenario: Panel mostrado correctamente
    Given que la usuaria inicia sesión
    When accede a la app
    Then el sistema debe mostrar el panel principal
    And mostrar íconos claros para cada sección

  @fallido
  Scenario: Error de carga
    Given que ocurre una falla en la conexión
    When intenta abrir el panel
    Then debe mostrarse el mensaje “Error al cargar contenido. Intente nuevamente”
    And no se debe mostrar el panel principal
