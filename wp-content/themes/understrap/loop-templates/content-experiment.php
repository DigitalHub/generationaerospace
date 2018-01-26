<?php
/**
 * Single post partial template.
 *
 * @package understrap
 */
global $loggedin;
$user_id = $_SESSION['user_id'];
$fav_experiments_table = $wpdb->prefix . 'genaero_favourite_experiments';
$count = 0;
$totalcount = 0;
?>
<button class="close-single-experiment"></button>
<div class="<?php echo $page_template ?> container-fluid single_experiment">
	<div class="row">
		<div class="order-xl-1 col-xl-7 order-lg-1 col-lg-7 order-md-1 col-md-7 order-sm-2 col-sm-12 order-xs-2 col-xs-12 single_experiment--methods">
			<div class="col-xl-10 offset-xl-1 col-lg-11 offset-lg-1 col-md-12 col-sm-12 col-xs-12 single_experiment--methods_wrapper">
				<div class="row single_experiment--row">
					<h1 class="single_experiment_header">STEPS_</h1><br/>
					<div class="single_experimentcaraousel--wrapper">
						<div class="experiment--wrapperhidbar">
							<div class="experiment--carousel">
								<?php  if(have_rows('steps')) :
								$totalcount = sprintf('%02d', count(get_field('steps')));
								$count = sprintf('%02d', 1);
								while(have_rows('steps')) : the_row();
									$photo = get_sub_field('photo');
									$step = get_sub_field('step'); ?>
									<div class="experiment_slide">
										<div class="post-thumbnail"><img src="<?=$photo['sizes']['large']?>"></div><br>
										<div class="experiment_counts">
											<span class="counting"><?=$count?></span><span class="totalcount"><?=$totalcount?></span>
										</div>
										<div class="experiment_steps"><?=$step?></div>
									</div>
									<?php 
									$count = sprintf('%02d',$count+1); 
								endwhile;
							endif;
							?>
							<div class="experiment_slide last_experiment--slide">
								<?php echo get_field('lesson'); ?>

								<div class="tried_experiement">
									<h3>Tried the experiment?<br>Submit your experiment video here: </h3>
									<?php 
									if($loggedin === '0') {
										?>
										<a href="<?php echo get_permalink( get_page_by_path( 'login' ) ) ?>" class="arrowbtn btn--color">
											<span class="fas fa-long-arrow-alt-right icon-left"></span>
											<div class="arrowbtn-wrapper"><span>Sign up or Register Now</span></div>
										</a>
										<?php } elseif($loggedin === '1') {?>
										<a href="<?php echo get_permalink( get_page_by_path( 'submit-a-video' ) ) ?>" class="arrowbtn btn--color">
											<span class="fas fa-long-arrow-alt-right icon-left"></span>
											<div class="arrowbtn-wrapper"><span>Submit My Video</span></div>
										</a>
										<?php 
									} ?>
								</div><!-- .tried_experiement -->
							</div><!-- .last_experiment--slide -->
						</div> <!-- experiment-carousel -->
					</div> <!-- experiment-wrapperhidbar -->
				</div> <!-- single_experimentcaraousel--wrapper -->
			</div> <!-- single_experiment--row -->
		</div><!-- single_experiment--methods_wrapper -->
	</div><!-- single_experiment--methods -->
	<div class="order-xl-2 col-xl-5 order-lg-2 col-lg-5 order-md-2 col-md-5 order-sm-1 col-sm-12 order-xs-1 col-xs-12 single_experiment--materials">
		<div class="row single_experiment--row">
			<div class="single_experiment--col col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12">

				<h1>Materials_</h1>
				<div class="experiment_matterial--list">
					<?php echo get_field('materials'); ?>
				</div><br>
				<div class="addthis_inline_share_toolbox_dznu"></div><br>

				<!-- TODO: STEF TO DO LOGIN FUNCTION IN FANCYBOX -->
				<?php 
				if($loggedin === '0') { 
					?>

					<a href="javascript:;" data-fancybox="modal" data-src="#login-modal"><i class="fal fa-heart"></i> Save Experiment</a>
					<div id="login-modal" style="display:none; max-width:300px; padding:20px"><span>You need to be logged in to save the experiment. Login here now.</span></div>

					<?php 
				} elseif($loggedin === '1') {
					$favs_sql = $wpdb->prepare("SELECT experiment_id FROM $fav_experiments_table WHERE member_id = '%s'", $user_id);
					$favs_results = $wpdb->get_results($favs_sql);
					$favs_count = $wpdb->num_rows;
					if($favs_count > 0) {
						?>
						<a href="#" class="faved"><i class="fas fa-heart"></i> Save Experiment</a>
						<?php
					} else {
						?>
						<a href="#" class="fav-experiment" data-id="<?php echo get_the_ID();?>" data-user="<?=$user_id?>"><i class="fal fa-heart"></i> Save Experiment</a>
						<?php
					}  
				} 

				if(get_field('pdf_upload')) {
					echo '<a href="'.get_field('pdf_upload').'" class="print" target="_blank"><i class="fal fa-print"></i> Print</a>';
				}

				?>
			</div>
		</div>
	</div>
</div><!-- .row -->
</div><!-- single_experiment -->