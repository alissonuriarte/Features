Feature: Activación del botón de pánico mediante gesto rápido
  Como usuaria
  Quiero poder activar el botón de pánico realizando un gesto rápido en la pantalla (por ejemplo, doble toque o deslizamiento hacia arriba)
  Para poder pedir ayuda sin necesidad de abrir la app completamente

  @exitoso
  Scenario: Activación por gesto
    Given que la usuaria tiene la app abierta en modo discreto
    When realiza el gesto configurado (doble toque o deslizamiento)
    Then el sistema debe activar la alerta
    And enviar la ubicación automáticamente

  @fallido
  Scenario: Falsa alarma
    Given que la usuaria activa el gesto por error
    When el sistema detecta la alerta
    Then debe permitir cancelarla en menos de 5 segundos antes del envío definitivo
    And mostrar un mensaje “Alerta cancelada”
    @configuracion
    Scenario: Configuración de gesto
      Given que la usuaria accede a la configuración de la app
      When selecciona la opción de “Gesto rápido”
      Then debe poder elegir entre diferentes gestos (doble toque, deslizamiento hacia arriba, etc.)
      And el sistema debe guardar la preferencia seleccionada