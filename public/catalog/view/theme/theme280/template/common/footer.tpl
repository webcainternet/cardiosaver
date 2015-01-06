<div class="clear"></div>
</div>
</div>
</div>
<div class="clear"></div>
</section>
<footer>
	<div class="container">
		<div class="row">
			<?php if ($informations) { ?>
			<div class="span3">
				<h3><?php echo $text_information; ?></h3>
				<ul>
				<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				<?php } ?>
				</ul>
			</div>
			<?php } ?>
			<div class="span3">
				<h3><?php echo $text_service; ?></h3>
				<ul>
				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
				</ul>
			</div>
<?php /*			<div class="span3">
				<h3><?php echo $text_extra; ?></h3>
				<ul>
				<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
				<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
				<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
				<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
				</ul>
			</div> */ ?>
			<div class="span3">
				<h3><?php echo $text_account; ?></h3>
				<ul>
				<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				</ul>
			</div>
			<div class="span3">
				<h3>Cursos</h3>
				<ul>
				<li><a href="/acls">ACLS</a></li>
				<li><a href="/eletrocardiografia">Eletrocardiografia</a></li>
				<li><a href="/emergencias">Emergência  Cardiovasculares</a></li>
				<li><a href="/fast">FAST</a></li>
				<li><a href="/rara">RARA</a></li>

				</ul>
			</div>
			
		</div>
		
	</div>
    <div class="socialBox">
        <div class="container">
            <div class="row">
                <ul class="social">						
                    <li class="span4"><a title="" class="facebook" href="https://www.facebook.com/pages/CardioSaver-Ensino-e-Treinamento/694703397240575" data-original-title="Facebook"><span>Facebook</span>Curta nossa pagina</a></li>
                    <li class="span4"><a title="" class="twitter" href="https://twitter.com/cardiosaver" data-original-title="Twitter"><span>Twitter</span>Siga-nos no Twitter</a></li>
                    <li class="span4"><a title="" class="rss" href="#" data-original-title="RSS"><span>85 3062-3302</span>Atendimento</a></li>
                </ul>
            </div>
        </div>
    </div>
	
    <div id="powered">
        <?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
    </div>
</footer>
<script type="text/javascript" 	src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/js/livesearch.js"></script>
</div>
</div></div>
</div>
</body></html>