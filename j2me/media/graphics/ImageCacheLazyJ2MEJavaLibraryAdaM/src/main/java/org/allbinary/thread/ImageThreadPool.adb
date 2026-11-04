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

package body org.allbinary.thread.ImageThreadPool_Package is

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
   procedure Initialize_Fields (This : in out ImageThreadPool'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ThreadPool_Access is
   begin
        return ThreadPool_Access (ImageThreadPool_Package.instance);
   end getInstance;

   procedure Initialize (This : in out ImageThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer) is
   begin
        ThreadPool_Package.Initialize (This, poolName, numThreads, priority);
        Initialize_Fields (This);
   end Initialize;

   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return ImageThreadPool_Access is
      This : constant ImageThreadPool_Access := new ImageThreadPool;
   begin
      ImageThreadPool_Package.Initialize (This.all, poolName, numThreads, priority);
      return This;
   end Create;

   procedure runTask (This : in out ImageThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        ThreadPool (This).runTask (task_Id);
   end runTask;

   procedure startTask (This : in out ImageThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        null;
   end startTask;

   procedure completedTask (This : in out ImageThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        null;
   end completedTask;

begin
   null;
   instance := ThreadPool_Access (ImageThreadPool_Package.Create (To_Unbounded_String ("ImageLoader"), 1, ThreadPool_Package.NORMAL_PRIORITY));

end org.allbinary.thread.ImageThreadPool_Package;


