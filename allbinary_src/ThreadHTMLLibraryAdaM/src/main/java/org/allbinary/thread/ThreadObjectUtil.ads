--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.thread.ThreadObjectUtil_Package;
package org.allbinary.thread.ThreadObjectUtil_Package_References is
   type ThreadObjectUtil_Access is access all org.allbinary.thread.ThreadObjectUtil_Package.ThreadObjectUtil'Class;
   type ThreadObjectUtil_Access_Array is array (Natural range <>) of ThreadObjectUtil_Access;
   type ThreadObjectUtil_Access_Array_Access is access all ThreadObjectUtil_Access_Array;
   type ThreadObjectUtil_Access_Array_Access_Array is array (Natural range <>) of ThreadObjectUtil_Access_Array_Access;
   type ThreadObjectUtil_Access_Array_Access_Array_Access is access all ThreadObjectUtil_Access_Array_Access_Array;
   type ThreadObjectUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThreadObjectUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ThreadObjectUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThreadObjectUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThreadObjectUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThreadObjectUtil_Access_Array_Access is (if Value /= null and then Value.all in ThreadObjectUtil_Access_Array_Object'Class then ThreadObjectUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ThreadObjectUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThreadObjectUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ThreadObjectUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThreadObjectUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThreadObjectUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThreadObjectUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ThreadObjectUtil_Access_Array_Access_Array_Object'Class then ThreadObjectUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.ThreadObjectUtil_Package_References;

with org.allbinary.thread.ThreadObjectUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.thread.PriorityRunnable_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.ThreadObjectUtil_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype PriorityRunnable_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access;
   use type PriorityRunnable_Access;
   subtype PriorityRunnable_Access_Array is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array;
   use type PriorityRunnable_Access_Array;
   subtype PriorityRunnable_Access_Array_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access;
   use type PriorityRunnable_Access_Array_Access;
   subtype PriorityRunnable_Access_Array_Access_Array is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access_Array;
   use type PriorityRunnable_Access_Array_Access_Array;
   subtype PriorityRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access_Array_Access;
   use type PriorityRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ThreadObjectUtil_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access;
   function "=" (Left, Right : ThreadObjectUtil_Access) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   function Java_Box (Value : ThreadObjectUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.ThreadObjectUtil_Package_References.Java_Box;
   function Java_Unbox_ThreadObjectUtil_Access_Array (Value : access Java_Object'Class) return ThreadObjectUtil_Access_Array_Access renames org.allbinary.thread.ThreadObjectUtil_Package_References.Java_Unbox_ThreadObjectUtil_Access_Array;
   subtype ThreadObjectUtil_Access_Array_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   function Java_Box (Value : ThreadObjectUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.ThreadObjectUtil_Package_References.Java_Box;
   function Java_Unbox_ThreadObjectUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ThreadObjectUtil_Access_Array_Access_Array_Access renames org.allbinary.thread.ThreadObjectUtil_Package_References.Java_Unbox_ThreadObjectUtil_Access_Array_Access_Array;

   type ThreadObjectUtil is new Java_Object with record
      NULL_PRIORITY_RUNNABLE : PriorityRunnable_Access;
   end record;
   instance : ThreadObjectUtil_Access;

   procedure Initialize (This : in out ThreadObjectUtil'Class);
   function Create return ThreadObjectUtil_Access;
   function getInstance return ThreadObjectUtil_Access;
   procedure notifyObject (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class);
   procedure waitObject (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class);
   procedure waitObjectFor (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class; delay_Id : Long_Long_Integer);
   procedure processThread (This : in out ThreadObjectUtil; runnable_Param : access Runnable_Package.Runnable'Class);
   procedure notifyObject (This : in out ThreadObjectUtil; Value : Unbounded_String);
   procedure waitObject (This : in out ThreadObjectUtil; Value : Unbounded_String);

end org.allbinary.thread.ThreadObjectUtil_Package;


