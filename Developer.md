# Eclipse
## Exclude chroot folder
Otherwise, there will be lock issues with Eclipse.
1. Right-click on the project
1. Select **Properties** from the menu
1. Select **Resource -> Resource Filters -> Add**
    * Filter Type : Exclude All
    * Applies to: Folder
    * File and Folder Attributes: Name | matches | chroot
    * OK
1. Apply