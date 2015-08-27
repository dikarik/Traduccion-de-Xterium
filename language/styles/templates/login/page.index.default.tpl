{block name="title" prepend}{$LNG.siteTitleIndex}{/block}{block name="content"}

<div id="content">
	<div id="right_side">
		<div class="browser">
			<h3>Unete ahora!</h3>
			<p>Para jugar, solo necesitara un navegador web.</p>
				<div class="links">
					<a href="http://www.opera.com/">
					<img src="./media/images/opera.png" width="22px" height="26px"/>
					</a>
					<a href="http://www.mozilla.org/en/firefox/new/">
					<img src="./media/images/firfox.png" width="27px" height="26px"/>
					</a>
					<a href="http://www.google.com/intl/en/chrome/browser/">
					<img src="./media/images/hrom.png" width="26px" height="27px"/>
					</a>
				</div>
		</div>

		<div class="socials">
			<div class="black_bg">
				<h3>Redes sociales</h3>
				<a style="background: url(./media/images/fb.png) no-repeat;" href="#" target="_BLANK"></a>
				<span>Suscribete y siguenos.</span>
			</div>
		</div>

		<div class="server_status">
			<div class="black_bg">
			<div class="">
				<div class="hr"></div>
				<h3>Estado del servidor</h3> jugadores: <span>{$users_amount}</span>
				<br>Nuevo este mes: <span>{$new_member}</span>
				<br>Nueva HOF: <span>{$total_hof}</span>
				<br>jugadores activos: <span>{$active}</span>
			</div>
			</div>
		</div>

		<div class="forums">
			<h3>ultimos Temas</h3>
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
		<link rel='stylesheet' id='style-css' href='./media/css/bjqs.css' type='text/css'>
		<script type='text/javascript' src='./media/js/bjqs.js'></script>


		{foreach $newsList as $newsRow}
			<div class="news">
				<h2 class="title">
				<a href="index.php?page=news&id={$newsRow.id}">{$newsRow.title}</a>
				</h2>
				<a href="index.php?page=news&id={$newsRow.id}"><img src="./media/{$newsRow.image}"/></a>
					<div class="news_gasage">
						<span class="date">{$newsRow.date}</span>
						<p>{$newsRow.text}</p>
					</div>
				<a href="index.php?page=news&id={$newsRow.id}" class="more">Mas...</a>
			</div>
			<div class="hr"></div>
		{foreachelse}
			<h2 class="title" style="padding: 15px;">{$LNG.news_does_not_exist}</h2>
		{/foreach}
		<a class="news_all" title="" href="index.php?page=news&mode=all">Mostrar todas las noticias</a>
	</div>

	<div class="clear"></div>
	
</div>

{/block}
{block name="script" append}<script>{if $code}alert({$code|json});{/if}</script>{/block}