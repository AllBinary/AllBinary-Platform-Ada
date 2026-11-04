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



package body org.allbinary.thread.NullPriorityRunnable_Package is

   procedure Initialize_Fields (This : in out NullPriorityRunnable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullPriorityRunnable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullPriorityRunnable_Access is
      This : constant NullPriorityRunnable_Access := new NullPriorityRunnable;
   begin
      NullPriorityRunnable_Package.Initialize (This.all);
      return This;
   end Create;


   function getPriority (This : in out NullPriorityRunnable) return Integer is
   begin
        return 0;
   end getPriority;

   function isDone (This : in out NullPriorityRunnable) return Boolean is
   begin
        return True;
   end isDone;

   procedure reset (This : in out NullPriorityRunnable) is
   begin
        null;
   end reset;

   procedure run (This : in out NullPriorityRunnable) is
   begin
        null;
   end run;

end org.allbinary.thread.NullPriorityRunnable_Package;


