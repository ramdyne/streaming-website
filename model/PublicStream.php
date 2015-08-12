<?php

class PublicStream
{
	public static function getRunningMounts()
	{
		$icecast = simplexml_load_file('configs/stats.xml');
		$running_mounts = [];

		foreach ($icecast->source as $source)
		{
			$running_mounts[] = $source['mount'];
		}

		return $running_mounts;
	}

	public static function getOverviewRooms()
	{
		$ys = json_decode(file_get_contents('configs/ys.json'));
		$radio_rooms = [];
		$running_mounts = PublicStream::getRunningMounts();

		foreach ($ys as $production)
		{
			// iterate all mount_points and check if any of those is online on the icecast
			foreach ($production->mount_points as $mount_point)
			{
				if( in_array($mount_point->mount_name, $running_mounts) )
				{
					$formats = [];
					foreach ($production->mount_points as $mount_point)
					{
						$formats[] = pathinfo($mount_point->mount_name, PATHINFO_EXTENSION);
					}

					$radio_rooms[$mount_point->name] = array(
						'DISPLAY' => $production->title,
						//'GENRE' => (string)$source->genre,
						'DESCRIPTION' => (string)$production->description,

						'MUSIC' => true,
						'EMBED' => true,

						'FORMATS' => $formats,
					);

					break 2;
				}
			}
		}

		return $radio_rooms;
	}

	public function __construct($foo)
	{
	}
}
