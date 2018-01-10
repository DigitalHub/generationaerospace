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
	<div class="col-xl-5">
		<p><?php the_title(); ?></p>
		<a href="<?php the_permalink(); ?>">Click to read more</a>
	</div>
	<div class="col-xl-2">
		<p><?php echo $date; ?></p>
	</div>
	<div class="col-xl-2">
		<p><?php echo get_field('start_time').' - '.get_field('end_time'); ?></p>
	</div>
	<div class="col-xl-3">
		<p><?php echo get_field('venue'); ?></p>
	</div>
</div> <!-- .events_row end -->