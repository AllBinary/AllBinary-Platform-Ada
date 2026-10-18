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

package body org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package is

   package CommonDataFileStrings_Package renames Standard.org.allbinary.logic.io.file.CommonDataFileStrings_Package;
   procedure Initialize_Fields (This : in out TransformInfoDataData'Class) is
   begin
      null;
      This.UNCRYPTED_EXTENSION := CommonDataFileStrings_Package.getInstance.UNCRYPTED_EXTENSION;
      This.ENCRYPTED_EXTENSION := CommonDataFileStrings_Package.getInstance.ENCRYPTED_EXTENSION;
   end Initialize_Fields;


   function getInstance return TransformInfoDataData_Access is
   begin
        return TransformInfoDataData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformInfoDataData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoDataData_Access is
      This : constant TransformInfoDataData_Access := new TransformInfoDataData;
   begin
      TransformInfoDataData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := TransformInfoDataData_Package.Create;

end org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package;


