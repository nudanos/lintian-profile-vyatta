# The default profile for "vyatta"
Profile: vyatta/main
# It has all the checks and settings from the "debian" profile
Extends: debian/main
# Tags not valid for Vyatta packages. The last four were lowered to "info"
# severity by the original DANOS profile; lintian 2.x profiles can no longer
# change severity, so they are disabled to keep them from failing builds.
Disable-Tags: dir-or-file-in-opt
 newer-standards-version
 bad-distribution-in-changes-file
 extended-description-is-empty
 section-area-mismatch
 backports-changes-missing
# We don't want to update Uploaders/sync in VR nor in VC repos.
Disable-Tags-From-Check: nmu
