<?php

echo $tpl->render(array(
	'page' => 'multicast',
	'title' => 'Multicast-Streams',

	'streams' => Multicast::streams(),
));
