--  Generated Code Do Not Modify


package body org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package is

   procedure Initialize_Fields (This : in out AppNameLicensingAdConfiguration'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AppNameLicensingAdConfiguration'Class) is
   begin
        AdConfiguration_Package.Initialize (This, new Java_Object_Access_Array'(StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING));
   end Initialize;

   function Create return AppNameLicensingAdConfiguration_Access is
      This : constant AppNameLicensingAdConfiguration_Access := new AppNameLicensingAdConfiguration;
   begin
      AppNameLicensingAdConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package;


