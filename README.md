# citrix-clicker

Applescript (rolled up in an Automator app) to find and keep-alive an active Citrix Viewer session, pre-warning the user by sending an audible notification as we momentarily steal (then return) focus to the current active application.

 - Warns the user that focus is about to be taken, by telling the current time using Apples 'Fiona' voice
 - Pauses for one second to allow user to momentarily cease input
 - Sends keypresses to Citrix Viewer process before returning focus to the previously active app
 - Repeats every eight minutes
 - Exits after 7 hours
