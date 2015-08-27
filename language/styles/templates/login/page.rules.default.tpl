{block name="title" prepend}{$LNG.siteTitleRules}{/block}
{block name="content"}

<div id="content">
  <div id="right_side">

    <div class="right_menu">
      <h3>Categories</h3>
      <ul>
        <li><a href="index.php?page=news&mode=notif">Notificaciones</a></li>
        <li><a href="index.php?page=news&mode=contest">Concursos</a></li>
        <li><a href="index.php?page=news&mode=stock">Valores</a></li>
        <li><a href="index.php?page=news&mode=update">Actualizaciones</a></li>
        <li><a href="index.php?page=news&mode=all">Todo</a></li>
      </ul>  
    </div>

    <div class="related_articles">
      <h3>Últimas noticias</h3>
      <div class="hr"></div>
      {foreach $newsList as $newsRow}
        <a href="index.php?page=news&id={$newsRow.id}">{$newsRow.title}</a>
        <div class="clear"></div>
      {foreachelse}
        <h1>{$LNG.news_does_not_exist}</h1>
      {/foreach}
    </div>       

    <div class="forums">
      <h3>Últimos Temas</h3>
      <div class="hr"></div>
      <a title="" href="#" class="more" target="_blank">Ir al foro ...</a>
    </div>

  </div><!--/right_side-->

  <div class="conteiner">  
    <div class="article">         
      {$rules}
    </div><!--/article-->
  </div><!--/conteiner-->

  <div class="clear"></div>
</div><!--container-->

{/block}