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


package body org.allbinary.AppletUtil_Package is

   procedure Initialize_Fields (This : in out AppletUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AppletUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AppletUtil_Access is
      This : constant AppletUtil_Access := new AppletUtil;
   begin
      AppletUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isAppletLoader (anyType_Param : access Java_Object'Class) return Boolean is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return False;
   end isAppletLoader;

   procedure isAppletLoader (anyType_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := isAppletLoader (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAppletLoader;

end org.allbinary.AppletUtil_Package;


