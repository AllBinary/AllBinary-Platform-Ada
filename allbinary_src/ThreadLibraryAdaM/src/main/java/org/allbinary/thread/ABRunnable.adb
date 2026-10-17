-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.thread.ABRunnable_Package is

   procedure Initialize_Fields (This : in out ABRunnable'Class) is
   begin
      null;
      This.running := False;
   end Initialize_Fields;

   procedure Initialize (This : in out ABRunnable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ABRunnable_Access is
      This : constant ABRunnable_Access := new ABRunnable;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure setThread (This : in out ABRunnable; thread : Thread_Access) is
   begin
        null;
   end setThread;

   function isRunning (This : in out ABRunnable) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out ABRunnable; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   procedure run (This : in out ABRunnable) is
   begin
        null;
   end run;

   function getType (This : in out ABRunnable) return Integer is
   begin
        return -(1);
   end getType;

   procedure isRunning (This : in out ABRunnable) is
      Java_Result : constant Boolean := ABRunnable'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

   procedure getType (This : in out ABRunnable) is
      Java_Result : constant Integer := ABRunnable'Class (This).getType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getType;

end org.allbinary.thread.ABRunnable_Package;


