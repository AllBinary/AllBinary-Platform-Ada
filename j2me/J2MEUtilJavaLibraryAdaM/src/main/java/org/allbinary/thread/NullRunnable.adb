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


package body org.allbinary.thread.NullRunnable_Package is

   procedure Initialize_Fields (This : in out NullRunnable'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return NullRunnable_Access is
   begin
        return NullRunnable_Package.instance;
   end getInstance;

   procedure Initialize (This : in out NullRunnable'Class) is
   begin
      ARunnable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullRunnable_Access is
      This : constant NullRunnable_Access := new NullRunnable;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant NullRunnable_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullRunnable_Package.Create;

end org.allbinary.thread.NullRunnable_Package;


