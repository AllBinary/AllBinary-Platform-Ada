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
limited with org.allbinary.logic.util.queue.BasicQueue_Package;
package org.allbinary.logic.util.queue.BasicQueue_Package_References is
   type BasicQueue_Access is access all org.allbinary.logic.util.queue.BasicQueue_Package.BasicQueue'Class;
   type BasicQueue_Access_Array is array (Natural range <>) of BasicQueue_Access;
   type BasicQueue_Access_Array_Access is access all BasicQueue_Access_Array;
   type BasicQueue_Access_Array_Access_Array is array (Natural range <>) of BasicQueue_Access_Array_Access;
   type BasicQueue_Access_Array_Access_Array_Access is access all BasicQueue_Access_Array_Access_Array;
   type BasicQueue_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicQueue_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicQueue_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicQueue_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicQueue_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicQueue_Access_Array_Access is (if Value /= null and then Value.all in BasicQueue_Access_Array_Object'Class then BasicQueue_Access_Array_Object'Class (Value.all).Value else null);
   type BasicQueue_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicQueue_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicQueue_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicQueue_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicQueue_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicQueue_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicQueue_Access_Array_Access_Array_Object'Class then BasicQueue_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.queue.BasicQueue_Package_References;

with org.allbinary.logic.util.queue.BasicQueue_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.util.queue.BasicQueue_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicQueue_Access is org.allbinary.logic.util.queue.BasicQueue_Package_References.BasicQueue_Access;
   function "=" (Left, Right : BasicQueue_Access) return Boolean renames org.allbinary.logic.util.queue.BasicQueue_Package_References."=";
   subtype BasicQueue_Access_Array is org.allbinary.logic.util.queue.BasicQueue_Package_References.BasicQueue_Access_Array;
   function "=" (Left, Right : BasicQueue_Access_Array) return Boolean renames org.allbinary.logic.util.queue.BasicQueue_Package_References."=";
   subtype BasicQueue_Access_Array_Access is org.allbinary.logic.util.queue.BasicQueue_Package_References.BasicQueue_Access_Array_Access;
   function "=" (Left, Right : BasicQueue_Access_Array_Access) return Boolean renames org.allbinary.logic.util.queue.BasicQueue_Package_References."=";
   function Java_Box (Value : BasicQueue_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.queue.BasicQueue_Package_References.Java_Box;
   function Java_Unbox_BasicQueue_Access_Array (Value : access Java_Object'Class) return BasicQueue_Access_Array_Access renames org.allbinary.logic.util.queue.BasicQueue_Package_References.Java_Unbox_BasicQueue_Access_Array;
   subtype BasicQueue_Access_Array_Access_Array is org.allbinary.logic.util.queue.BasicQueue_Package_References.BasicQueue_Access_Array_Access_Array;
   function "=" (Left, Right : BasicQueue_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.queue.BasicQueue_Package_References."=";
   subtype BasicQueue_Access_Array_Access_Array_Access is org.allbinary.logic.util.queue.BasicQueue_Package_References.BasicQueue_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicQueue_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.queue.BasicQueue_Package_References."=";
   function Java_Box (Value : BasicQueue_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.queue.BasicQueue_Package_References.Java_Box;
   function Java_Unbox_BasicQueue_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicQueue_Access_Array_Access_Array_Access renames org.allbinary.logic.util.queue.BasicQueue_Package_References.Java_Unbox_BasicQueue_Access_Array_Access_Array;

   type BasicQueue is new Java_Object with record
      queueVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BasicQueue'Class);
   function Create return BasicQueue_Access;
   function offer (This : in out BasicQueue; anyType_Param : access Java_Object'Class) return Boolean;
   procedure offer (This : in out BasicQueue; anyType_Param : access Java_Object'Class);
   procedure remove (This : in out BasicQueue; anyType_Param : access Java_Object'Class);
   function removeLast (This : in out BasicQueue) return Java_Object_Access;
   function offer (This : in out BasicQueue; Value : Unbounded_String) return Boolean;
   procedure offer (This : in out BasicQueue; Value : Unbounded_String);
   procedure remove (This : in out BasicQueue; Value : Unbounded_String);

end org.allbinary.logic.util.queue.BasicQueue_Package;


