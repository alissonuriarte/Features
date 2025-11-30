Feature: Iniciar chat y recibir respuestas automáticas
 Como usuaria
 Quiero iniciar una conversación con el chatbot
  Para obtener asistencia inmediata y confiable.

@exitoso
  Scenario: Inicio de chat y respuesta correcta
    Given que la usuaria toca el ícono del chatbot
    And la ventana de chat se abre correctamente
    When la usuaria envía un mensaje
    Then el chatbot responde con un mensaje relevante

@fallido
  Scenario: Error de conexión o mensaje no comprendido
    Given que existe un problema de conexión o el mensaje es confuso
    When la usuaria intenta enviar un mensaje
    Then el sistema muestra "No se pudo conectar con el asistente, intente más tarde"
    And si el mensaje no se comprende, el chatbot responde "No entendí tu consulta, ¿puedes reformularla?"
