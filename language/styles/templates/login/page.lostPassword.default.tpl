{block name="title" prepend}{$LNG.siteTitleLostPassword}{/block}
{block name="content"}

<h1 class="top_title"></h1>

<form action="index.php?page=lostPassword" method="post" data-action="index.php?page=lostPassword" >
	<input type="hidden" value="send" name="mode">

	<div class="blocks">
		<span class="lable">{$LNG.passwordMail}:</span>
		<input type="text" name="mail" id="mail">
		<div id="regemailcption" class="reg_caption"> Ingrese su correo electrónico para enviar el código secreto. El código secreto que sólo estará disponible durante 24 horas . </div>
	</div>

	<div class="clear"></div>

	<span class="lable"></span>
	<input class="button" type="submit" value="enviar" name="submit1">

	<div class="clear"></div>

</form>
{/block}