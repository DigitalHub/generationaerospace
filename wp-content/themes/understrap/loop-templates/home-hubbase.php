<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */?>
 <div class="HudOverlay" style="background-image: url('<?php echo $bgimg; ?>');">

 	<svg class="lines">
 		<line x1="220" x2="220" y1="0" y2="100%">
 			<animate attributeName="opacity" values="0.1;0.5;0.1" dur="0.5s" repeatCount="indefinite"/>
 		</line>
 		<line x1="500" x2="500" y1="0" y2="100%">
 			<animate attributeName="opacity" values="0.2;0.1;0.2" dur="1s" repeatCount="indefinite"/>
 		</line>
 		<line x1="550" x2="550" y1="0" y2="100%">
 			<animate attributeName="opacity" values="0.1;0.4;0.1" dur="0.5s" repeatCount="indefinite"/>
 		</line>
 		<line x1="1200" x2="1200" y1="0" y2="100%">
 			<animate attributeName="opacity" values="0.4;0.1;0.4" dur="1s" repeatCount="indefinite"/>
 		</line>
 	</svg>

 	<svg class="circlerotate" viewBox="0 0 1200 1200">
 		<g transform="translate(600, 600)"> 
 			<circle cx="0" cy="0" r="600">
 				<animateTransform attributeType="xml" attributeName="transform" type="rotate" from="0" to="360" begin="0" dur="500s" repeatCount="indefinite" />
 			</circle>
 		</g>
 	</svg> 
 	<svg class="homeHudOverlay" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1316 653.6" style="enable-background:new 0 0 1316 653.6;" xml:space="preserve" preserveAspectRatio="none">
 		<path class="outsideHudOverlay" d="M0,0v653.6h1316V0H0z M1271.5,605.7c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6
 		C39,604.6,24.9,484,19.7,387.5c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3
 		C24.1,175.8,39,55.2,39.1,54c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8l450,0.4c173.1,5,377.8,11.2,381.3,11.3
 		c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3C1292.4,377.1,1271.7,603.4,1271.5,605.7z"/>
 		<g>
 			<defs>
 				<path id="SVGID_1_" d="M880.4,34c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
 				c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6C39,604.6,24.9,484,19.7,387.5
 				c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3C24.1,175.8,39,55.2,39.1,54
 				c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8L880.4,34z"/>
 			</defs>
 			<g>
 				<path class="HudOverlay-fill" d="M880.4,33.9c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
 				c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6c-0.1-1.1-14.2-121.7-19.4-218.2
 				c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3c4.7-97.2,19.6-217.8,19.7-219
 				c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8"/>
 				<path class="HudOverlay-fullBorder" d="M880.4,33.9c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
 				c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6c-0.1-1.1-14.2-121.7-19.4-218.2
 				c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3c4.7-97.2,19.6-217.8,19.7-219
 				c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8"/>
 			</g>
 		</g>
 		<polygon class="polygon" points="521.5,614.2 538.7,608.6 773.5,608.6 790.2,614.2 773.8,617.4 539,617.4"/>
 	</svg>
 </div> 