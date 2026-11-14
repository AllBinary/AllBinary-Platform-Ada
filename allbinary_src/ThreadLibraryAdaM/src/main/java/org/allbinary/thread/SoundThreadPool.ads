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

with AllBinary_Java;
limited with org.allbinary.thread.SoundThreadPool_Package;
package org.allbinary.thread.SoundThreadPool_Package_References is
   type SoundThreadPool_Access is access all org.allbinary.thread.SoundThreadPool_Package.SoundThreadPool'Class;
   type SoundThreadPool_Access_Array is array (Natural range <>) of SoundThreadPool_Access;
   type SoundThreadPool_Access_Array_Access is access all SoundThreadPool_Access_Array;
   type SoundThreadPool_Access_Array_Access_Array is array (Natural range <>) of SoundThreadPool_Access_Array_Access;
   type SoundThreadPool_Access_Array_Access_Array_Access is access all SoundThreadPool_Access_Array_Access_Array;
   type SoundThreadPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SoundThreadPool_Access_Array_Access;
   end record;
   function Java_Box (Value : SoundThreadPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SoundThreadPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SoundThreadPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SoundThreadPool_Access_Array_Access is (if Value /= null and then Value.all in SoundThreadPool_Access_Array_Object'Class then SoundThreadPool_Access_Array_Object'Class (Value.all).Value else null);
   type SoundThreadPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SoundThreadPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SoundThreadPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SoundThreadPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SoundThreadPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SoundThreadPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SoundThreadPool_Access_Array_Access_Array_Object'Class then SoundThreadPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.SoundThreadPool_Package_References;

with org.allbinary.thread.SoundThreadPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package_References;

package org.allbinary.thread.SoundThreadPool_Package is

   package Reference_Types is
   subtype ThreadPool_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access;
   use type ThreadPool_Access;
   subtype ThreadPool_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array;
   use type ThreadPool_Access_Array;
   subtype ThreadPool_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access;
   use type ThreadPool_Access_Array_Access;
   subtype ThreadPool_Access_Array_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array;
   use type ThreadPool_Access_Array_Access_Array;
   subtype ThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array_Access;
   use type ThreadPool_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SoundThreadPool_Access is org.allbinary.thread.SoundThreadPool_Package_References.SoundThreadPool_Access;
   function "=" (Left, Right : SoundThreadPool_Access) return Boolean renames org.allbinary.thread.SoundThreadPool_Package_References."=";
   subtype SoundThreadPool_Access_Array is org.allbinary.thread.SoundThreadPool_Package_References.SoundThreadPool_Access_Array;
   function "=" (Left, Right : SoundThreadPool_Access_Array) return Boolean renames org.allbinary.thread.SoundThreadPool_Package_References."=";
   subtype SoundThreadPool_Access_Array_Access is org.allbinary.thread.SoundThreadPool_Package_References.SoundThreadPool_Access_Array_Access;
   function "=" (Left, Right : SoundThreadPool_Access_Array_Access) return Boolean renames org.allbinary.thread.SoundThreadPool_Package_References."=";
   function Java_Box (Value : SoundThreadPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.SoundThreadPool_Package_References.Java_Box;
   function Java_Unbox_SoundThreadPool_Access_Array (Value : access Java_Object'Class) return SoundThreadPool_Access_Array_Access renames org.allbinary.thread.SoundThreadPool_Package_References.Java_Unbox_SoundThreadPool_Access_Array;
   subtype SoundThreadPool_Access_Array_Access_Array is org.allbinary.thread.SoundThreadPool_Package_References.SoundThreadPool_Access_Array_Access_Array;
   function "=" (Left, Right : SoundThreadPool_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.SoundThreadPool_Package_References."=";
   subtype SoundThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.SoundThreadPool_Package_References.SoundThreadPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SoundThreadPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.SoundThreadPool_Package_References."=";
   function Java_Box (Value : SoundThreadPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.SoundThreadPool_Package_References.Java_Box;
   function Java_Unbox_SoundThreadPool_Access_Array_Access_Array (Value : access Java_Object'Class) return SoundThreadPool_Access_Array_Access_Array_Access renames org.allbinary.thread.SoundThreadPool_Package_References.Java_Unbox_SoundThreadPool_Access_Array_Access_Array;

   type SoundThreadPool is new Java_Object with null record;
   instance : ThreadPool_Access;

   procedure Initialize (This : in out SoundThreadPool'Class);
   function Create return SoundThreadPool_Access;
   function getInstance return ThreadPool_Access;

end org.allbinary.thread.SoundThreadPool_Package;


