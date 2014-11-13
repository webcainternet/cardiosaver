<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
            <td><?php echo $entry_nome; ?></td>
            <td><input type="text" name="bancosantander_nome" value="<?php echo $bancosantander_nome; ?>" size="70" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_cedente; ?></td>
            <td><input type="text" name="bancosantander_cedente" value="<?php echo $bancosantander_cedente; ?>" size="70" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_cpfcnpj; ?></td>
            <td><input type="text" name="bancosantander_cpfcnpj" value="<?php echo $bancosantander_cpfcnpj; ?>" size="30" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_endereco; ?></td>
            <td><textarea name="bancosantander_endereco" rows="3" cols="50"><?php echo $bancosantander_endereco; ?></textarea></td>
          </tr>
		  <tr>
            <td><?php echo $entry_cliente; ?></td>
            <td><input type="text" name="bancosantander_cliente" value="<?php echo $bancosantander_cliente; ?>" size="12" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_venda; ?></td>
            <td><input type="text" name="bancosantander_venda" value="<?php echo $bancosantander_venda; ?>" size="12" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_taxa; ?></td>
            <td><input type="text" name="bancosantander_taxa" value="<?php echo $bancosantander_taxa; ?>" size="10" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_dias; ?></td>
            <td><input type="text" name="bancosantander_dias" value="<?php echo $bancosantander_dias; ?>" size="10" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_demo1; ?></td>
            <td><input type="text" name="bancosantander_demo1" value="<?php echo $bancosantander_demo1; ?>" size="70" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_demo2; ?></td>
            <td><input type="text" name="bancosantander_demo2" value="<?php echo $bancosantander_demo2; ?>" size="70" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_demo3; ?></td>
            <td><input type="text" name="bancosantander_demo3" value="<?php echo $bancosantander_demo3; ?>" size="70" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_ins1; ?></td>
            <td><input type="text" name="bancosantander_ins1" value="<?php echo $bancosantander_ins1; ?>" size="70" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_ins2; ?></td>
            <td><input type="text" name="bancosantander_ins2" value="<?php echo $bancosantander_ins2; ?>" size="70" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_ins3; ?></td>
            <td><input type="text" name="bancosantander_ins3" value="<?php echo $bancosantander_ins3; ?>" size="70" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_ins4; ?></td>
            <td><input type="text" name="bancosantander_ins4" value="<?php echo $bancosantander_ins4; ?>" size="70" /></td>
          </tr>
		  <tr>
            <td><?php echo $entry_total; ?></td>
            <td><input type="text" name="bancosantander_total" value="<?php echo $bancosantander_total; ?>" /></td>
          </tr>        
          <tr>
            <td><?php echo $entry_order_status; ?><br /><span class="help">Status padr&atilde;o que os pedidos seram criados.</span></td>
            <td><select name="bancosantander_order_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $bancosantander_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td><select name="bancosantander_geo_zone_id">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $bancosantander_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="bancosantander_status">
                <?php if ($bancosantander_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="bancosantander_sort_order" value="<?php echo $bancosantander_sort_order; ?>" size="1" /></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?> 