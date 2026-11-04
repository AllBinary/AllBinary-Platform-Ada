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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.thread.ThreadUtil_Package is

   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ThreadUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.JOIN_Field := To_Unbounded_String ("join");
   end Initialize_Fields;

   procedure Initialize (This : in out ThreadUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThreadUtil_Access is
      This : constant ThreadUtil_Access := new ThreadUtil;
   begin
      ThreadUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThreadUtil_Access is
   begin
        return ThreadUtil_Access (ThreadUtil_Package.instance);
   end getInstance;

   function isRunning (This : in out ThreadUtil; thread_Param : access Thread_Package.Thread'Class) return Boolean is
      thread : constant Thread_Access := Thread_Access (thread_Param);
   begin
        if ((thread) /= (null)) and then (thread.isAlive) then
            return True;
        else
            return False;
        end if;
   end isRunning;

   --  throws Exception
   procedure join (This : in out ThreadUtil; thread_Param : access Thread_Package.Thread'Class) is
      thread : constant Thread_Access := Thread_Access (thread_Param);
   begin
        if ThreadUtil_Package.getInstance.isRunning (thread) then
            This.logUtil.putF (To_Unbounded_String ("Waiting for Thread To Join/End"), ThreadUtil_Access'(This'Unchecked_Access), This.JOIN_Field);
            thread.join;
        end if;
   end join;

   procedure isRunning (This : in out ThreadUtil; thread_Param : access Thread_Package.Thread'Class) is
      Java_Result : constant Boolean := ThreadUtil'Class (This).isRunning (thread_Param => thread_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

begin
   null;
   instance := ThreadUtil_Package.Create;

end org.allbinary.thread.ThreadUtil_Package;


