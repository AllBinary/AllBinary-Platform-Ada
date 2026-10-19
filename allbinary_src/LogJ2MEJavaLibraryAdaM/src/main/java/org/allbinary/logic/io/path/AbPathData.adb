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


with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.logic.io.path.AbPathData_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out AbPathData'Class) is
   begin
      null;
      This.EXTENSION_SEP := CommonSeps_Package.getInstance.PERIOD;
      This.SEPARATORCHAR := '/';
      This.SEPARATOR := CommonSeps_Package.getInstance.FORWARD_SLASH;
   end Initialize_Fields;


   function getInstance return AbPathData_Access is
   begin
        return AbPathData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AbPathData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbPathData_Access is
      This : constant AbPathData_Access := new AbPathData;
   begin
      AbPathData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := AbPathData_Package.Create;

end org.allbinary.logic.io.path.AbPathData_Package;


