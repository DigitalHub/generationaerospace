<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */?>
 <div class="HudOverlay" style="background-image: url('<?php echo $bgimg; ?>');">

 	<svg class="lines">
 		<line x1="220" x2="220" y1="0" y2="100%">
 			<animate attributeName="opacity" values="0;0.5;0" dur="10s" repeatCount="indefinite"/>
 		</line>
 		<line x1="500" x2="500" y1="0" y2="100%">
 			<animate attributeName="opacity" values="1.2;0;0" dur="15s" repeatCount="indefinite"/>
 		</line>
 		<line x1="550" x2="550" y1="0" y2="100%">
 			<animate attributeName="opacity" values="0;0.4;0" dur="30s" repeatCount="indefinite"/>
 		</line>
 		<line x1="1200" x2="1200" y1="0" y2="100%">
 			<animate attributeName="opacity" values="1.4;0;1.3" dur="15s" repeatCount="indefinite"/>
 		</line>
 	</svg>

 	<svg class="circlerotate" viewBox="0 0 1200 1200">
 		<g transform="translate(600, 600)"> 
 			<circle cx="0" cy="0" r="600">
 				<animateTransform attributeType="xml" attributeName="transform" type="rotate" from="0" to="360" begin="0" dur="500s" repeatCount="indefinite" />
 			</circle>
 		</g>
 	</svg> 
 	<svg class="HudOverlayme" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1316 653.6" style="enable-background:new 0 0 1316 653.6;" xml:space="preserve" preserveAspectRatio="none">
 		<filter height="120%" id="blurlayer" width="110%">
 			<feGaussianBlur  result="blur" stdDeviation="2"></feGaussianBlur>
 		</filter>
 		<g>
 			<g class="HubOverlay--Blur">
 				<image xlink:href="<?php echo $bgimg; ?>"></image>
 			</g>
 			<defs>
 				<path id="HubOutside" d="M880.4,34c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
 				c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6C39,604.6,24.9,484,19.7,387.5 c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3C24.1,175.8,39,55.2,39.1,54 c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8L880.4,34z"/>

 				<path id="clip_path_bg" d="M880.4,34c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
 				c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6C39,604.6,24.9,484,19.7,387.5 c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3C24.1,175.8,39,55.2,39.1,54 c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8L880.4,34z"/>
 			</defs>
 			<clipPath id="HubOverlay--Blur">
 				<use xlink:href="#HubOutside" style="overflow:visible;"/>
 				<use xlink:href="#clip_path_bg" style="overflow:visible;"/>
 			</clipPath>
 			<g class="HudOverlay-fullBorder">
 				<path class="path" d="M880.4,34c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
 				c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6C39,604.6,24.9,484,19.7,387.5 c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3C24.1,175.8,39,55.2,39.1,54 c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8"/>
 			</g>
 			<polygon class="polygon" points="521.5,614.3 538.7,608.7 773.5,608.7 790.2,614.3 773.8,617.5 539,617.5	"/>
 		</g>
 	</svg>
 </div> 