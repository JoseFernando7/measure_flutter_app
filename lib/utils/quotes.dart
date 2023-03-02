import 'dart:math';

class Qoutes
{
  Qoutes();

  List<String> qoutes = 
  [
    'El hombre que se levanta es aún más grande que el que no ha caído',
    'Nunca dejes a nadie en el mundo decirte que no puedes ser exactamente quien tú eres',
    'Date permiso de soñar esos sueños que superan tus límites',
    'Si estableces metas y vas tras ellas con toda la determinación que puedas, tu recompensa va a llevarte a sitios increíbles',
    'Si no estás deseando llegar demasiado lejos, nunca llegarás lo suficientemente lejos en esta vida',
    'Nunca tengas miedo de soñar',
    'No te dejes paralizar por el miedo al fracaso, por que sino no te exigirás nada',
    'Lo importante no es lo que te pasa sino lo que haces al respecto',
    'La forma de empezar es dejar de hablar y empezar a hacerlo',
    'Adelante ya no tengas miedo',
    'Esta chispa, estoy segura, algún día, ¡me iluminará a mí también!',
    'Ya no soy el insignificante yo de ayer',
    'Creer de verdad es lo más importante, asegúrate de decírtelo a ti mismo',
    'No olvidaré nunca lo que significa creer',
    'Seguro que después de mañana, estaré más cerca de mis sueños',
    'Nadie sabe lo que nos deparará el futuro, pero apuesto a que será divertido',
    'Seguro de que todos nuestros sueños tienen el poder de provocar el cambio',
    'Si quieres llorar las lágrimas que retuviste, estaría bien llorar tantas que podrías ahogarte en ellas',
    'No importa lo vasto que sea el cielo, no importa lo destrozadas que estén tus alas, arroja tu miedo a un lado, y alza el vuelo',
    '¡Abre el camino hacia tu sueño sin fin!',
    'Hay un sueño escondido en tu pecho que iluminará tu camino',
    'Un sueño que se ha hecho fuerte jamás perderá',
    'Este cambio no es nuestro final',
    'Compra a tu querido hijo una play 5',
    'No pierdas tu ocasión de brillar porque la oportunidad sólo llega una vez en la vida'
  ];

  String choiceRandomQuote()
  {
    return qoutes[Random().nextInt(qoutes.length)];
  }
}