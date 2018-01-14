<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */

$startdate = get_field('start_date');
$enddate = get_field('end_date');
$date = getDates($startdate, $enddate);

?>

<div class="row events_row--content">
	<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-xs-12">
		<p><?php the_title(); ?></p>
		<div class="col-xl-12 col-lg-12 col-md-12 d-md-block d-sm-none d-none text-left"><a class="row" href="<?php the_permalink(); ?>">Click to read more</a></div>
	</div>
	<div class="col-xl-2 col-lg-2 col-md-2 col-sm-12 col-xs-12">
		<p><?php echo $date; ?></p>
	</div>
	<div class="col-xl-2 col-lg-2 col-md-2 col-sm-12 col-xs-12">
		<p><?php echo get_field('start_time').' - '.get_field('end_time'); ?></p>
	</div>
	<div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-xs-12">
		<p><?php echo get_field('venue'); ?></p>
	</div>
	<div class="d-sm-block d-md-none col-sm-12 col-xs-12"><a href="<?php the_permalink(); ?>">Click to read more</a></div>
</div> <!-- .events_row end -->