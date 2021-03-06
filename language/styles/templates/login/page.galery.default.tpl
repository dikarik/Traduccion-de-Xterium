﻿{block name="title" prepend}{$LNG.siteTitleRegister}{/block}
{block name="content"}

<div id="content">

	<div id="right_side">
		<div class="right_menu">
			<h3>Categorias</h3>
			<ul>
				<li><a href="index.php?page=galery&mode=space">Espacio</a></li>
				{* <li><a href="index.php?page=galery&mode=update">Actualizaciones</a></li> *}
				<li><a href="index.php?page=galery&mode=screen">Capturas de pantalla</a></li>
				<li><a href="index.php?page=galery">Ver todo</a></li>
			</ul>
		</div>

		<div class="related_articles">
			<h3>Últimas noticias</h3>
			<div class="hr"></div>

			{foreach $newsList as $newsRow}
				<a href="../index.php?page=news&id={$newsRow.id}">{$newsRow.title}</a>
				<div class="clear"></div>
			{foreachelse}
				<h1>{$LNG.news_does_not_exist}</h1>
			{/foreach}
		</div>

		<div class="forums">
			<h3>Últimos Temas</h3>
			<div class="hr"></div>

			{foreach $topicsList as $topicsRow}
				<a title="" href="#" target="_blank">{$topicsRow.title}<br><span>{$topicsRow.date}</span></a>
			{foreachelse}
				<h1>{$LNG.news_does_not_exist}</h1>
			{/foreach}

			<a title="" href="#" class="more" target="_blank">Ir al foro ...</a>
		</div>
	</div>

	<div class="conteiner">
		<div class="article" style="padding-right:0;">
			<h1 style="margin-bottom: 35px;" class="top_title">Galeria</h1>
			<a href="index.php?page=galery&mode=screen" class="album">
			<img src="./media/user_data/gallery/image/thumb/94b661fe56cf9d42e1a3ee0dc30eddad.jpg" alt="overview - (Nom du site BDD)" title=""/>Capturas de pantalla
			</a>
			{* <a href="index.php?page=galery&mode=update" class="album">
			<img src="./media/user_data/gallery/image/thumb/35c1e29727d9ed17eba855f81af41541.jpg" alt="Update 1.0.6 (Nom du site BDD)" title=""/>Actualizaciones
			</a>*}
			<a href="index.php?page=galery&mode=space" class="album">
			<img src="./media/user_data/gallery/image/thumb/a385a1721b9d1d7071301455dae234f2.jpg" alt="(Nom du site BDD)" title=""/>Espacio
			</a>

			<script type="text/javascript">
				$(function(){
					var description='Media - (Nom du site BDD)';
					$("a[rel^='lightbox']").prettyPhoto({
					changepicturecallback: function(index){
					/* Called everytime an item is shown/changed */
				}});
			});
			</script>

			<div class="clear"></div>
		</div>
	</div>

	<div class="clear"></div>

</div>
{/block}