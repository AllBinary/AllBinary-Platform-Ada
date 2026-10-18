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



package body org.allbinary.logic.java.JNDIUtil_Package is

   procedure Initialize_Fields (This : in out JNDIUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out JNDIUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return JNDIUtil_Access is
      This : constant JNDIUtil_Access := new JNDIUtil;
   begin
      JNDIUtil_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.logic.java.JNDIUtil_Package;


