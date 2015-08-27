{block name="title" prepend}{$LNG.siteTitleRegister}{/block}
{block name="content"}

<script type="text/javascript" defer="defer" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/jquery-ui.min.js"></script>

<link rel="stylesheet" type="text/css" href="./styles/css/fb-traffic-pop.css">
<script async type="text/javascript" src="./scripts/game/fb-traffic-pop.min.js?v=2676"></script>
{*<script async type="text/javascript">

	jQuery(document).ready(function(){		
					
		jQuery().facebookTrafficPop({
			timeout: 15,
			delay: 0,
			title: "<strong><center>Illium - Servidor Privado</center></strong>",
			message: '<strong><center>Ayudanos a crecer en facebook !!</center></strong> </strong><a href="#"><img src="http://dark-space.org/media/images/logoz.png" border="0" style="margin:10px 0px;width:100%;" /></a></center>',
			url: "#",
			
		});
		
	});

</script>*}


{literal}
<script type="text/javascript">
    $(function() {
        function proverka_email(input) {
                input.value=input.value.replace(/[^a-zA-Z0-9@\-\_.]+$/g,'');
            };
        function proverka_login(input) {
                input.value=input.value.replace(/[^a-zA-Z0-9@\-\_]+$/g,'');
            };
        function proverka_pass(input) {
            input.value=input.value.replace(/[^a-zA-Z0-9@\-\_.]+$/g,'');
        };
    });
</script>
{/literal}

<h1 class="top_title">Crea una cuenta</h1>
<div class="confid"> Garantizamos la confidencialidad de los datos introducidos.</div>

<form id="registerForm" method="post" action="index.php?page=register" data-action="index.php?page=register">
    <input type="hidden" value="send" name="mode">
    <input type="hidden" value="{$externalAuth.account}" name="externalAuth[account]">
    <input type="hidden" value="{$externalAuth.method}" name="externalAuth[method]">
    <input type="hidden" value="{$referralData.id}" name="referralID">

    <div class="blocks">
        <span class="lable">Email</span>
        <input type="email" class="input" name="email" id="email" oncut="return false" oncopy="return false" onpaste="return false">
        {if !empty($error.email)}
            <span class="error errorEmail"></span>
        {/if}
        <div id="regemailcption" class="reg_caption"> Debe ser válido. <br>Requerido al entrar. </div>
    </div>

    <div class="blocks">
        <span class="lable">Ingresar al juego</span>
        <input type="text" class="input" name="username" id="username" maxlenght="32">
        {if !empty($error.username)}
            <span class="error errorUsername"></span>
        {/if}
        <div id="regnamecption" class="reg_caption"> Bajo este nombre los demas usuarios te conoceran. Use letras y números. </div>
    </div>

    <div class="blocks">
        <span class="lable">Contraseña para el juego</span>
        <input type="password" class="input" name="password" id="password">
        {if !empty($error.password)}
            <span class="error errorPassword"></span>
        {/if}
        <div id="regpasswcption" class="reg_caption">Al menos 6 caracteres. <br>Use letras y números. </div>
    </div>

    <div class="blocks">
        <span class="lable">Universo</span>
        <select name="uni" id="universe" class="sel_uni">{html_options options=$universeSelect selected=$UNI}</select>
        {if !empty($error.uni)}
            <span class="error errorUni"></span>
        {/if}
        <div class="reg_caption" style="line-height:40px;"></div>
    </div>

    <div class="blocks">
        <span class="lable">Idioma</span>
        <select name="lang" id="language" class="sel_uni">
            {html_options options=$languages selected=$lang}
        </select>
        {if !empty($error.language)}
            <span class="error errorLanguage"></span>
        {/if}
    </div>

    <br>
   

    <div class="clear"></div>

    <span class="lable"></span>
    <input class="button" id="form1" type="submit" value="Jugar" name="data[submit]">
    <div id="form2" style="display:none;" class="reg_caption"> Clicking on Play, you agree to <a href="index.php?page=rules" target="_blank">the rules</a> . </div>

    <div class="clear"></div>
</form>

{/block}

{block name="script" append}
<link rel="stylesheet" type="text/css" href="styles/resource/css/login/register.css?v={$REV}">
    {if $recaptchaEnable}
        <script type="text/javascript" src="http://www.google.com/recaptcha/api/js/recaptcha_ajax.js"></script>
        <script type="text/javascript">
            var RecaptchaOptions = {
            	lang : '{$lang}',
            };

            var recaptchaPublicKey = "{$recaptchaPublicKey}";

            Recaptcha.create(recaptchaPublicKey, 'display_captcha', {
            	theme: 'custom',
            	tabindex: '6',
            	custom_theme_widget: 'display_captcha'
            });
        </script>
    {/if}
<script type="text/javascript" src="scripts/login/register.js"></script>
{/block}
