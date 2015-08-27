{block name="title" prepend}{$LNG.siteTitleNews}{/block}
{block name="content"}

<div id="content">

	<div id="right_side">
		<div class="right_menu">
			<h3>Categorias</h3>
			<ul>
				<li><a href="index.php?page=news&mode=notif">Notificationes</a></li>
				<li><a href="index.php?page=news&mode=contest">Concursos</a></li>
				<li><a href="index.php?page=news&mode=stock">Valores</a></li>
				<li><a href="index.php?page=news&mode=update">Actualizaciones</a></li>
				<li><a href="index.php?page=news&mode=all">Todo</a></li>
			</ul>
		</div>

		<div class="related_articles">
			<h3>Últimas noticias</h3>
			<div class="hr"></div>
			{foreach $newsList as $newsRow}<a href="index.php?page=news&id={$newsRow.id}">{$newsRow.title}</a>
				<div class="clear"></div>
			{foreachelse}
				<h1>{$LNG.news_does_not_exist}</h1>
			{/foreach}
		</div>

		<div class="forums">
			<h3>Últimos Temas</h3>
			<div class="hr"></div>
			{foreach $topicsList as $topicsRow}
				<a title="" href="#" target="_blank">{$topicsRow.title}
				<br><span>{$topicsRow.date}</span>
				</a>
			{foreachelse}
				<h1>{$LNG.news_does_not_exist}</h1>
			{/foreach}

			<a title="" href="#" class="more" target="_blank">Ir al foro ...</a>
		</div>
	</div>

	<div class="conteiner">
		<div class="article">
			<h1 class="top_title">{$notif}</h1>
			<div class="confid">{$info}</div>
			{foreach $newsList as $newsRow}
				{if !$newsRow@first}
					<div class="hr"></div>
				{/if}
				<div class="news">
					<h2 class="title"><a href="index.php?page=news&id={$newsRow.id}">{$newsRow.title}</a></h2>
					<a href="index.php?page=news&id={$newsRow.id}"><img src="./media/{$newsRow.image}" title="Pronto una nueva campaña"></a>
					<div class="news_gasage">
						<span class="date">{$newsRow.date}</span>
						<p>{$newsRow.text}</p>
					</div>
					<a href="index.php?page=news&id={$newsRow.id}" class="more">Mas...</a>
				</div>
			{foreachelse}
				<h1>{$LNG.news_does_not_exist}</h1>
			{/foreach}
			<div class="navigation">
				<div class="page-navigator">
					<span class="prev"><a href="/news/uvedomleniya/~/1"></a></span>
					<span class="active">1</span><a href="/news/uvedomleniya/~/2/">2</a>
					<span class="next"><a href="/news/uvedomleniya/~/2"></a></span>
				</div>

			<div class="clear"></div>
			</div>
		</div>
	</div>

	<div class="clear"></div>

</div>
{/block}