{block name="title" prepend}
{$LNG.siteTitleIndex}{/block}
{block name="content"}
<link rel="stylesheet" type="text/css" href="/styles/css/fb-traffic-pop.css">


<div id="content">
  <div id="right_side">
    <div class="right_menu">
      <h3>
        Categorias
      </h3>
      <ul>
        <li>
          <a href="index.php?page=news&mode=notif">
            Notificaciones
          </a>
        </li>
        <li>
          <a href="index.php?page=news&mode=contest">
            Concursos
          </a>
        </li>
        <li>
          <a href="index.php?page=news&mode=stock">
            Valores
          </a>
        </li>
        <li>
          <a href="index.php?page=news&mode=update">
            Actualizaciones
          </a>
        </li>
        <li>
          <a href="index.php?page=news&mode=all">
            Todo
          </a>
        </li>
      </ul>
    </div>
    <div class="related_articles">
      <h3>
        ultimas noticias
      </h3>
      <div class="hr">
      </div>
      {foreach $newsList as $newsRow}
      <a href="index.php?page=news&id={$newsRow.id}">
        {$newsRow.title}
      </a>
      <div class="clear">
      </div>
      {foreachelse}
      <h1>
        {$LNG.news_does_not_exist}
      </h1>
      {/foreach}
    </div>
    <div class="forums">
      <h3>
        ultimos Temas
      </h3>
      <div class="hr">
      </div>
      <a title="" href="forum" class="more" target="_blank">
        Ir al foro ...
      </a>
    </div>
  </div>
  <div class="conteiner">
    <div class="article">
      <div id="news">
        <h2>
          Acerca de {$gameName}
        </h2>
        <br/>
        <p align="justify">
          <span>
            Bienvenidos a {$gameName}. La velocidad del juego es lenta y podra disfrutar de la jugabilidad, podras disfrutar de nuevos desarrollos en los mundos del juego. Lucha contra otros jugadores en el universo al mismo tiempo para obtener el titulo de Emperador y convertirse en los jugadores mas experimentados para poder jugar esta estrategia emocionante y entretenida. Solos es necesario tener un navegador de Internet. Pruebe todos los esfuerzos para crear una estructura economica y militar unico construido en esto y ganar una nueva investigacio. Lucha contra otros jugadores y alianzas. Crear alianzas y hacer alianzas con otras alianzas.
          </span>
        </p>
        <p align="justify">&nbsp;
          
        </p>
        <p align="justify">
          El juego comienza con un planeta pequeño, lo que en el futuro será la capital de todo el imperio. Para el desarrollo del imperio a su disposición abrirá nuevas tecnologías, nuevos edificios, nuevas naves y defensa. En el juego, hay varias maneras de desarrollar Imperio. La primera forma en que puede convertirse en un minero, enviar recursos a todos mis amigos. La segunda manera de ser un luchador profesional, que produce recursos con la ayuda de su poderosa flota. La tercera manera de ser espía a sueldo que tiene sondas de inteligencia y se compromete cualquier trabajo .
        </p>
        <p align="justify">&nbsp;
          
        </p>
        <p align="justify">
          Para sobrevivir en 
          <span>
            {$gameName}
          </span>
          tienen que monitorear simultáneamente muchas cosas: desarrollar defensa para la construcción del imperio, tener constante actualizada la flota, y todo ello bajo la supervisión de vecinos agresivos. Sobrevivir en 
          <span>
            {$gameName}
          </span>
         es extremadamente difícil. Para no morir tendra que aliarse con alianzas . las alianza tiene muchas ventajas. por ejemplo, sólo para que pueda participar en batallas interesantes y superior con miles e incluso millones de 
          <span>
            unidades y naves.
          </span>
          <span>
             
          </span>
       
        </p>
        <p align="justify">&nbsp;
          
        </p>
      </div>
    </div>
  </div>
  <div class="clear">
  </div>
</div>
{/block}
