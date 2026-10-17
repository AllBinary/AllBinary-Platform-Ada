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


package body org.allbinary.AndroidUtil_Package is

   procedure Initialize_Fields (This : in out AndroidUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AndroidUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AndroidUtil_Access is
      This : constant AndroidUtil_Access := new AndroidUtil;
   begin
      AndroidUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function isMemoryRestrictive return Boolean is
   begin
        if (AndroidUtil_Package.version) < (30) then
            return True;
        end if;
        return False;
   end isMemoryRestrictive;

   function isAndroid return Boolean is
   begin
        return True;
   end isAndroid;

begin
   null;
   NULL_ACTIVITY := Activity_Package.Create;
   version := Integer'Value (To_String (Build_Package.VERSION.SDK));

end org.allbinary.AndroidUtil_Package;


