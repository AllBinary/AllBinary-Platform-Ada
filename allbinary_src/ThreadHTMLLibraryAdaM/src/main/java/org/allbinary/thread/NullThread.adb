-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.NullRunnable_Package; use org.allbinary.thread.NullRunnable_Package;

package body org.allbinary.thread.NullThread_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out NullThread'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullThread'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullThread_Access is
      This : constant NullThread_Access := new NullThread;
   begin
      NullThread_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   NULL_THREAD := Thread_Package.Create (NullRunnable_Package.getInstance, StringUtil_Package.getInstance.EMPTY_STRING);

end org.allbinary.thread.NullThread_Package;


