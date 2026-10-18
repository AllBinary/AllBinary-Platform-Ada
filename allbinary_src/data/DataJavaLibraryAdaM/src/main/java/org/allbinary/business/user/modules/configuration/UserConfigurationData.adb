--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.logic.io.file.CommonDataFileStrings_Package; use org.allbinary.logic.io.file.CommonDataFileStrings_Package;

package body org.allbinary.business.user.modules.configuration.UserConfigurationData_Package is

   package CommonDataFileStrings_Package renames Standard.org.allbinary.logic.io.file.CommonDataFileStrings_Package;
   procedure Initialize_Fields (This : in out UserConfigurationData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserConfigurationData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UserConfigurationData_Access is
      This : constant UserConfigurationData_Access := new UserConfigurationData;
   begin
      UserConfigurationData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("USER_CONFIGURATION_NAME");
   UNCRYPTED_EXTENSION := CommonDataFileStrings_Package.getInstance.UNCRYPTED_EXTENSION;
   ENCRYPTED_EXTENSION := CommonDataFileStrings_Package.getInstance.ENCRYPTED_EXTENSION;

end org.allbinary.business.user.modules.configuration.UserConfigurationData_Package;


