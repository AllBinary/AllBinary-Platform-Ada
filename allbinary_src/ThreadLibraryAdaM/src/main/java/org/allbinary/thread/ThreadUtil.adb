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


package body org.allbinary.thread.ThreadUtil_Package is

   procedure Initialize_Fields (This : in out ThreadUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.JOIN := To_Unbounded_String ("join");
   end Initialize_Fields;

   procedure Initialize (This : in out ThreadUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThreadUtil_Access is
      This : constant ThreadUtil_Access := new ThreadUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThreadUtil_Access is
   begin
        return ThreadUtil_Package.instance;
   end getInstance;

   function isRunning (This : in out ThreadUtil; thread : Thread_Access) return Boolean is
   begin
        if ((thread) /= (null)) and then (thread.isAlive) then
            return True;
        else
            return False;
        end if;
   end isRunning;

   --  throws Exception
   procedure join_Case (This : in out ThreadUtil; thread : Thread_Access) is
   begin
        if ThreadUtil_Package.getInstance.isRunning (thread) then
            This.logUtil.putF (To_Unbounded_String ("Waiting for Thread To Join/End"), This'Unchecked_Access, This.JOIN);
            thread.join_Case;
        end if;
   end join_Case;

   procedure getInstance is
      Java_Result : constant ThreadUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isRunning (This : in out ThreadUtil; thread : Thread_Access) is
      Java_Result : constant Boolean := ThreadUtil'Class (This).isRunning (thread);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

begin
   null;
   instance := ThreadUtil_Package.Create;

end org.allbinary.thread.ThreadUtil_Package;


