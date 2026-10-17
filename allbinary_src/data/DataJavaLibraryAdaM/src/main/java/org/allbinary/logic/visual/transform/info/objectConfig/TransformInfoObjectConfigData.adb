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


package body org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package is

   procedure Initialize_Fields (This : in out TransformInfoObjectConfigData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("OBJECTCONFIG_NAME");
      This.VARKEY := To_Unbounded_String ("$");
      This.UNCRYPTED_EXTENSION := CommonDataFileStrings_Package.getInstance.UNCRYPTED_EXTENSION;
      This.ENCRYPTED_EXTENSION := CommonDataFileStrings_Package.getInstance.ENCRYPTED_EXTENSION;
   end Initialize_Fields;


   function getInstance return TransformInfoObjectConfigData_Access is
   begin
        return TransformInfoObjectConfigData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformInfoObjectConfigData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoObjectConfigData_Access is
      This : constant TransformInfoObjectConfigData_Access := new TransformInfoObjectConfigData;
   begin
      TransformInfoObjectConfigData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := TransformInfoObjectConfigData_Package.Create;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;


