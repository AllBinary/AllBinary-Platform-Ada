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


with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.thread.SoundThreadPool_Package is

   subtype ThreadPool_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access;
   function "=" (Left, Right : ThreadPool_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array;
   function "=" (Left, Right : ThreadPool_Access_Array) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access;
   function "=" (Left, Right : ThreadPool_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array;
   function "=" (Left, Right : ThreadPool_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreadPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   procedure Initialize_Fields (This : in out SoundThreadPool'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SoundThreadPool'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SoundThreadPool_Access is
      This : constant SoundThreadPool_Access := new SoundThreadPool;
   begin
      SoundThreadPool_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThreadPool_Access is
   begin
        return ThreadPool_Access (SoundThreadPool_Package.instance);
   end getInstance;

begin
   null;
   instance := ThreadPool_Package.Create (To_Unbounded_String ("Sound"), 1, ThreadPool_Package.NORMAL_PRIORITY);

end org.allbinary.thread.SoundThreadPool_Package;


