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


