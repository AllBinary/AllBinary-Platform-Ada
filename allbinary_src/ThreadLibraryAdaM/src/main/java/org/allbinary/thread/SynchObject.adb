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



package body org.allbinary.thread.SynchObject_Package is

   procedure Initialize_Fields (This : in out SynchObject'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SynchObject'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SynchObject_Access is
      This : constant SynchObject_Access := new SynchObject;
   begin
      SynchObject_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.thread.SynchObject_Package;


