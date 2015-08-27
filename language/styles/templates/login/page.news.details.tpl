{block name="title" prepend}{$LNG.siteTitleNews}{/block}
{block name="content"}

<div id="content">

<div id="right_side">
	<div class="right_menu">
		<h3>Categorias</h3>
		<ul>
			<li><a href="index.php?page=news&mode=notif">Notificaciones</a></li>
			<li><a href="index.php?page=news&mode=contest">Concursos</a></li>
			<li><a href="index.php?page=news&mode=stock">Valores</a></li>
			<li><a href="index.php?page=news&mode=update">Actualizaciones</a></li>
			<li><a href="index.php?page=news">Todo</a></li>
		</ul>
	</div>

	<div class="related_articles">
		<h3>Últimas noticias</h3>
		<div class="hr"></div>
		{foreach $newsList1 as $newsRow1}
			<a href="index.php?page=news&id={$newsRow1.id}">{$newsRow1.title}</a>
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
</div>

	<div class="conteiner">
		{foreach $newsList as $newsRow}
			<div class="article">
				<h1 class="top_title" style="margin-bottom:20px;">{$newsRow.title}</h1>
				<div class="text_news">
					<p>{$newsRow.text}</p>
					<br>
					<div class="hr" style="margin-top:50px;"></div>
				</div>
				
				<div class="share">
					<span style="float:left">Compartir con tus amigos: </span>
					<div class="fb-share-button" data-href="{$actual_link}" data-type="icon"></div>
				</div>
			</div>
		{/foreach}
	</div>

<div class="clear"></div>

</div>

<div id="fb-root"></div>

<script type="text/javascript">
	(function(d, s, id){
		var js,
		fjs=d.getElementsByTagName(s)[0];

			if (d.getElementById(id)) 
				return;

		js=d.createElement(s);
		js.id=id;
		js.src="//connect.facebook.net/fr_FR/all.js#xfbml=1";
		fjs.parentNode.insertBefore(js, fjs);
	}
		(document, 'script', 'facebook-jssdk')
	);
</script>

{/block}