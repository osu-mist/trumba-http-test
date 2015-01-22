# Test Trumba iCalendar HTTP Requests

To test Trumba, set `USERNAME`, `PASSWORD`, and `WEBNAME` in `config.bash` and execute the following shell scripts.



## GET without authentication

    $ ./GET-noauth.bash 
    HTTP/1.1 403 Forbidden
    Cache-Control: private
    Content-Type: text/html
    Server: Microsoft-IIS/7.0
    X-AspNet-Version: 4.0.30319
    X-Powered-By: ASP.NET
    P3P: CP='ALL DSP COR CUR ADMa DEVa CONi OUR PUBi IND ONL FIN INT DEM CNT LOC'
    Date: Thu, 22 Jan 2015 21:26:58 GMT
    Connection: close
    Accept-Ranges: none
    Vary: Accept-Encoding, User-Agent
    
    You do not have permission to view this directory or page.



## PUT without authentication

    $ ./PUT-noauth.bash sample.ical 
    HTTP/1.1 100 Continue
    
    HTTP/1.1 403 Forbidden
    Cache-Control: private
    Transfer-Encoding: chunked
    Content-Type: text/html
    Server: Microsoft-IIS/7.0
    X-AspNet-Version: 4.0.30319
    X-Powered-By: ASP.NET
    P3P: CP='ALL DSP COR CUR ADMa DEVa CONi OUR PUBi IND ONL FIN INT DEM CNT LOC'
    Date: Thu, 22 Jan 2015 21:27:40 GMT
    Accept-Ranges: none
    Vary: Accept-Encoding, User-Agent
        
    You do not have permission to view this directory or page.



## PUT with authentication and delta=false

With the URL parameter `?delta=false`, the local calendar overwrites the remote calendar.

    $ ./PUT-auth-nodelta.bash empty.ical 
    HTTP/1.1 100 Continue
    
    HTTP/1.1 200 OK
    Cache-Control: private
    Content-Length: 134
    Content-Type: text/html
    Server: Microsoft-IIS/7.0
    X-AspNet-Version: 4.0.30319
    X-Powered-By: ASP.NET
    P3P: CP='ALL DSP COR CUR ADMa DEVa CONi OUR PUBi IND ONL FIN INT DEM CNT LOC'
    Date: Thu, 22 Jan 2015 21:32:28 GMT
    Accept-Ranges: none
    
    <?xml version="1.0"?>
    <Response xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" />



## PUT with authentication and delta=true

Create a new event by uploading an iCalendar file containing an event with a new UID.

    $ ./PUT-auth-delta.bash create.ical 
    HTTP/1.1 100 Continue
    
    HTTP/1.1 200 OK
    Cache-Control: private
    Content-Length: 242
    Content-Type: text/html
    Server: Microsoft-IIS/7.0
    X-AspNet-Version: 4.0.30319
    X-Powered-By: ASP.NET
    P3P: CP='ALL DSP COR CUR ADMa DEVa CONi OUR PUBi IND ONL FIN INT DEM CNT LOC'
    Date: Thu, 22 Jan 2015 21:34:47 GMT
    Accept-Ranges: none
    
    <?xml version="1.0"?>
    <Response xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
      <ResponseMessage Code="1101" Description="Event added" Level="Information" UID="123456789" />
    </Response>


Update an existing event by uploading an iCalendar file containing an event with an existing UID.

    $ ./PUT-auth-delta.bash update.ical 
    HTTP/1.1 100 Continue
    
    HTTP/1.1 200 OK
    Cache-Control: private
    Content-Length: 245
    Content-Type: text/html
    Server: Microsoft-IIS/7.0
    X-AspNet-Version: 4.0.30319
    X-Powered-By: ASP.NET
    P3P: CP='ALL DSP COR CUR ADMa DEVa CONi OUR PUBi IND ONL FIN INT DEM CNT LOC'
    Date: Thu, 22 Jan 2015 21:35:27 GMT
    Accept-Ranges: none
    
    <?xml version="1.0"?>
    <Response xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
      <ResponseMessage Code="1102" Description="Event modified" Level="Information" UID="123456789" />
    </Response>


Delete an existing event by uploading an iCalendar file containing an event with METHOD:CANCEL.

    $ ./PUT-auth-delta.bash delete.ical 
    HTTP/1.1 100 Continue
        
    HTTP/1.1 200 OK
    Cache-Control: private
    Content-Length: 0
    Server: Microsoft-IIS/7.0
    X-AspNet-Version: 4.0.30319
    X-Powered-By: ASP.NET
    P3P: CP='ALL DSP COR CUR ADMa DEVa CONi OUR PUBi IND ONL FIN INT DEM CNT LOC'
    Date: Thu, 22 Jan 2015 21:47:38 GMT
    Accept-Ranges: none

(This does not appear to work.)



## GET with authentication

    $ ./GET-auth.bash 
    HTTP/1.1 200 OK
    Cache-Control: no-cache
    Pragma: no-cache
    Content-Length: 1010
    Content-Type: text/calendar; charset=utf-8
    Expires: -1
    Server: Microsoft-IIS/7.0
    X-AspNet-Version: 4.0.30319
    Content-Disposition: attachment;  filename=osu-womens-center.ics
    X-Powered-By: ASP.NET
    P3P: CP='ALL DSP COR CUR ADMa DEVa CONi OUR PUBi IND ONL FIN INT DEM CNT LOC'
    Date: Thu, 22 Jan 2015 21:49:04 GMT
    Accept-Ranges: none
    
    BEGIN:VCALENDAR
    PRODID:-//Trumba Corporation//Trumba Calendar Services 0.11.12121//EN
    VERSION:2.0
    CALSCALE:GREGORIAN
    METHOD:PUBLISH
    X-WR-CALNAME:OSU|Women's Center
    X-WR-TIMEZONE:America/Los_Angeles
    BEGIN:VTIMEZONE
    TZID:America/Los_Angeles
    BEGIN:STANDARD
    TZOFFSETFROM:-0700
    TZOFFSETTO:-0800
    TZNAME:PST
    DTSTART:20071104T020000
    RRULE:FREQ=YEARLY;BYMONTH=11;BYDAY=1SU
    END:STANDARD
    BEGIN:DAYLIGHT
    TZOFFSETFROM:-0800
    TZOFFSETTO:-0700
    TZNAME:PDT
    DTSTART:20070311T020000
    RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=2SU
    END:DAYLIGHT
    END:VTIMEZONE
    BEGIN:VEVENT
    SUMMARY:Test trumba update
    DTSTART;TZID=America/Los_Angeles:20150123T040000
    DTEND;TZID=America/Los_Angeles:20150123T040000
    X-MICROSOFT-CDO-ALLDAYEVENT:FALSE
    X-TRUMBA-CUSTOMFIELD;NAME="Event Template";ID=21;TYPE=Number:OSU Event T
     emplate (On Campus)
    DTSTAMP:20150122T213518Z
    DESCRIPTION:This is an updated sample event to test Trumba.
    LAST-MODIFIED:20150122T213518Z
    CREATED:20150122T213500Z
    UID:123456789
    END:VEVENT
    END:VCALENDAR
