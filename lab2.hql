create table weblogtest (
		host string,
		time string,
		method string,
		object string,
		replycode string,
		size string )
row format serde ‘org.apache.hadoop.hive.serde2.RegexSerDe’
	with serdeproperties (“input.regex” =
	“([^\\s]+) - - \\[(.+)\\] \” ([^\\s]+) (/[^\\s]*) HTTP
	/[^\\s]+\” ([^\\s]+) ([0-9]+)” ) stored as textfile;