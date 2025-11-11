Feature: Confirmación visual y sonora de alerta enviada
  Como usuaria
  Quiero ver una animación y escuchar un sonido de confirmación
  Para saber que la alerta fue enviada correctamente

  @exitoso
  Scenario: Confirmación exitosa
    Given que la alerta se envió
    When el sistema la confirma
    Then debe mostrarse un ícono animado
    And reproducirse un sonido breve

  @fallido
  Scenario: Fallo en el envío
    Given que no se pudo enviar la alerta
    When ocurre un error
    Then debe mostrarse el mensaje “No se pudo enviar la alerta. Intente de nuevo”
    And la alerta no debe considerarse enviada
