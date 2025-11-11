Feature: Navegación entre secciones principales
  Como usuaria
  Quiero desplazarme entre las secciones del panel (Botón de pánico, Chatbot, Contactos y Perfil)
  Para acceder fácilmente a cada funcionalidad

  @exitoso
  Scenario: Cambio de sección exitoso
    Given que la usuaria selecciona una opción del panel
    When presiona su ícono
    Then el sistema debe redirigirla correctamente a esa pantalla

  @exitoso
  Scenario: Animación de transición
    Given que la usuaria navega entre secciones
    When cambia de una a otra
    Then la interfaz debe mostrar una animación suave de transición
