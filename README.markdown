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
