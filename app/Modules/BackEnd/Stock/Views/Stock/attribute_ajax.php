<?php 


if ($attribute_value_id !=''){

?>



<?php 

	 	
		foreach ($Attribute_values as $v){

			$attr_values = unserialize($v->is_default);

			foreach ($attr_values as $key => $Attribute_id){

				foreach ($Attribute as $v){

					if ($v->id == $Attribute_id){ ?>

				<div class="form-group col-md-4">

					<label><?php echo $v->name; ?></label>

					<select data-placeholder="None" multiple class="chosen-select" tabindex="8" name="<?php echo $v->id; ?>[]">

					    <option value="" >No Color</option>

					    <?php 

					    	$att_values = unserialize($v->is_default);

					    	for($i = 0; $i < count($att_values) ; $i++){

					    		echo '<option value="'.$i.'" >'.$att_values[$i].'</option>';

					    	}

					    ?>

					 </select>



				</div>

<?php

					}

				}

			}

		}

		?>

<?php } ?>