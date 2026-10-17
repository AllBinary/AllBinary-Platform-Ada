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


package body org.allbinary.thread.NullABRunnable_Package is

   procedure Initialize_Fields (This : in out NullABRunnable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullABRunnable'Class) is
   begin
      ABRunnable_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NullABRunnable_Access is
      This : constant NullABRunnable_Access := new NullABRunnable;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return NullABRunnable_Access is
   begin
        return NullABRunnable_Package.instance;
   end getInstance;

   function isRunning (This : in out NullABRunnable) return Boolean is
   begin
        return False;
   end isRunning;

   procedure getInstance is
      Java_Result : constant NullABRunnable_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isRunning (This : in out NullABRunnable) is
      Java_Result : constant Boolean := NullABRunnable'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

begin
   null;
   instance := NullABRunnable_Package.Create;

end org.allbinary.thread.NullABRunnable_Package;


