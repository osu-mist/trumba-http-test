# Test Trumba iCalendar  HTTP GET/PUT Requests

Shell commands to download and [upload](http://www.trumba.com/help/api/icsimport.aspx) iCalendar files from [Trumba](http://www.trumba.com).


## Configure Environment

### Download Sample iCalendar File

    $ curl --remote-name http://calendar.oregonstate.edu/osu.ics

### Define Credentials

    $ USERNAME="user@email.com"
    $ PASSWORD="trumbaPassword"
    $ WEBNAME="TrumbaWebName"


## Test Trumba

### GET without authentication

    $ curl https://www.trumba.com/service/$WEBNAME.ics
    You do not have permission to view this directory or page.

### GET with authentication

    $ curl --user $USERNAME:$PASSWORD https://www.trumba.com/service/$WEBNAME.ics
    BEGIN:VCALENDAR
    PRODID:-//Trumba Corporation//Trumba Calendar Services 0.11.12107//EN
    VERSION:2.0
    CALSCALE:GREGORIAN
    METHOD:PUBLISH
    X-WR-CALNAME:OSU|Women's Center
    X-WR-TIMEZONE:America/Los_Angeles
    END:VCALENDAR

### PUT without authentication

    $ curl --upload-file osu.ics https://www.trumba.com/service/$WEBNAME.ics
    You do not have permission to view this directory or page.

### PUT with authentication

    $ curl --upload-file osu.ics --user $USERNAME:$PASSWORD https://www.trumba.com/service/$WEBNAME.ics
    <?xml version="1.0"?>
    <Response xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="41" PropertyName="X-OSU-CONTACT-DEPT" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="42" PropertyName="X-OSU-CONTACT-EMAIL" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="43" PropertyName="X-OSU-CONTACT-PHONE" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="63" PropertyName="X-OSU-CONTACT-DEPT" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="64" PropertyName="X-OSU-CONTACT-EMAIL" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="65" PropertyName="X-OSU-CONTACT-PHONE" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="66" PropertyName="X-OSU-COST" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="67" PropertyName="X-OSU-LOCATION" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="68" PropertyName="X-OSU-ROOM" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="82" PropertyName="X-OSU-CITY" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="83" PropertyName="X-OSU-CONTACT-DEPT" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="84" PropertyName="X-OSU-CONTACT-EMAIL" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="85" PropertyName="X-OSU-CONTACT-PHONE" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="86" PropertyName="X-OSU-COST" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="87" PropertyName="X-OSU-LOCATION" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="88" PropertyName="X-OSU-ROOM" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="115" PropertyName="X-OSU-CITY" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="116" PropertyName="X-OSU-CONTACT-DEPT" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="117" PropertyName="X-OSU-CONTACT-EMAIL" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="118" PropertyName="X-OSU-CONTACT-PHONE" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="119" PropertyName="X-OSU-COST" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="120" PropertyName="X-OSU-LOCATION" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="121" PropertyName="X-OSU-ROOM" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="122" PropertyName="X-OSU-STATE" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="139" PropertyName="X-OSU-CONTACT-DEPT" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="140" PropertyName="X-OSU-CONTACT-EMAIL" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="141" PropertyName="X-OSU-CONTACT-PHONE" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="143" PropertyName="X-OSU-COST" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="144" PropertyName="X-OSU-LOCATION" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="145" PropertyName="X-OSU-ROOM" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="168" PropertyName="X-OSU-CITY" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="169" PropertyName="X-OSU-CONTACT-DEPT" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="170" PropertyName="X-OSU-CONTACT-EMAIL" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="173" PropertyName="X-OSU-COST" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="174" PropertyName="X-OSU-LOCATION" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="175" PropertyName="X-OSU-STATE" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="176" PropertyName="X-OSU-SUBTITLE" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="193" PropertyName="X-OSU-CITY" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="194" PropertyName="X-OSU-CONTACT-DEPT" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="195" PropertyName="X-OSU-CONTACT-EMAIL" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="196" PropertyName="X-OSU-CONTACT-PHONE" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="198" PropertyName="X-OSU-COST" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="199" PropertyName="X-OSU-LOCATION" />
      <ResponseMessage Code="2101" Description="Property not recognized" Level="Warning" LineNumber="200" PropertyName="X-OSU-ROOM" />
      <ResponseMessage Code="1101" Description="Event added" Level="Information" UID="20150120T080000Z-94799@calendar.oregonstate.edu" />
      <ResponseMessage Code="1101" Description="Event added" Level="Information" UID="20150120T220000Z-101349@calendar.oregonstate.edu" />
      <ResponseMessage Code="1101" Description="Event added" Level="Information" UID="20150121T000000Z-101385@calendar.oregonstate.edu" />
      <ResponseMessage Code="1101" Description="Event added" Level="Information" UID="20150121T000000Z-101665@calendar.oregonstate.edu" />
      <ResponseMessage Code="1101" Description="Event added" Level="Information" UID="20141104T020000Z-97207@calendar.oregonstate.edu" />
      <ResponseMessage Code="1101" Description="Event added" Level="Information" UID="20150107T020000Z-100725@calendar.oregonstate.edu" />
      <ResponseMessage Code="1101" Description="Event added" Level="Information" UID="20140709T000000Z-95837@calendar.oregonstate.edu" />
    </Response>

### PUT Event with Same UID

    $ curl --remote-name --user $USERNAME:$PASSWORD https://www.trumba.com/service/$WEBNAME.ics
    $ cp $WEBNAME.ics temp.ics
    $ emacs temp.ics
    $ curl --upload-file temp.ics --user $USERNAME:$PASSWORD https://www.trumba.com/service/$WEBNAME.ics
    <?xml version="1.0"?>
    <Response xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
      <ResponseMessage Code="1102" Description="Event modified" Level="Information" UID="20150120T080000Z-94799@calendar.oregonstate.edu" />
    </Response>

Uploading a modified event overwrites the entire calendar!

    $ curl --output modified-$WEBNAME.ics --user $USERNAME:$PASSWORD https://www.trumba.com/service/$WEBNAME.ics
    $ diff $WEBNAME.ics modified-$WEBNAME.ics | grep "^<" | wc -l
    88
    $ diff $WEBNAME.ics modified-$WEBNAME.ics | grep "^>" | wc -l
    10

Downloading the calendar, modifying a single event, and uploading the calendar modifies all the events!

    $ diff $WEBNAME.ics modified-$WEBNAME.ics
    26c26
    < SUMMARY:WRGP Winter Seminar: Dr. Kim Anderson
    ---
    > SUMMARY:WRGP Winter Seminar: Doctor Kim Anderson
    32c32
    < DTSTAMP:20150121T222513Z
    ---
    > DTSTAMP:20150121T223005Z
    41c41
    < LAST-MODIFIED:20150121T222513Z
    ---
    > LAST-MODIFIED:20150121T223005Z
    54c54
    < DTSTAMP:20150121T222834Z
    ---
    > DTSTAMP:20150121T223006Z
    79c79
    < LAST-MODIFIED:20150121T222834Z
    ---
    > LAST-MODIFIED:20150121T223006Z
    91c91
    < DTSTAMP:20150121T222834Z
    ---
    > DTSTAMP:20150121T223006Z
    99c99
    < LAST-MODIFIED:20150121T222834Z
    ---
    > LAST-MODIFIED:20150121T223006Z
    108,109c108,109
    < RRULE:FREQ=WEEKLY;UNTIL=20150129T000000Z;INTERVAL=1;BYDAY=WE
    < LAST-MODIFIED:20150121T222834Z
    ---
    > RRULE:FREQ=WEEKLY;UNTIL=20150130T000000Z;INTERVAL=1;BYDAY=WE
    > LAST-MODIFIED:20150121T223006Z
    111c111
    < DTSTAMP:20150121T222834Z
    ---
    > DTSTAMP:20150121T223006Z
