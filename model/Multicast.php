<?php

class Multicast extends ModelBase
{
	public static function streams()
	{
		$streams = array();
		foreach(ModelBase::staticGet('MULTICAST') as $url => $title)
			$streams[] = new Multicast($url, $title);

		return $streams;
	}

	public static function isEnabled()
	{
		return count(ModelBase::staticGet('MULTICAST')) > 0;
	}


	public function __construct($url, $title)
	{
		$this->url = $url;
		$this->title = $title;
	}

	public function getUrl() {
		return $this->url;
	}

	public function getTitle() {
		return $this->title;
	}
}
