#!/usr/bin/env bash

OUTPUT=feed.xml

echo '<?xml version="1.0" encoding="utf-8"?>' >$OUTPUT
echo '<rss version="2.0">' >>$OUTPUT
echo '<channel>' >>$OUTPUT
echo '<title>hnrss.org updates</title>' >>$OUTPUT
echo '<link>https://hnrss.org/</link>' >>$OUTPUT
echo '<description>A feed announcing updates related to hnrss.org</description>' >>$OUTPUT
recsel updates.rec | recfmt -f item.tpl >>$OUTPUT
echo '</channel>' >>$OUTPUT
echo '</rss>' >>$OUTPUT

xmllint -format $OUTPUT | tee $OUTPUT
