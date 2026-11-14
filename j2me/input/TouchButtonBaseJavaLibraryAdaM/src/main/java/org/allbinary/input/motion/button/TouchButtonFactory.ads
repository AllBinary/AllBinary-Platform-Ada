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
limited with org.allbinary.input.motion.button.TouchButtonFactory_Package;
package org.allbinary.input.motion.button.TouchButtonFactory_Package_References is
   type TouchButtonFactory_Access is access all org.allbinary.input.motion.button.TouchButtonFactory_Package.TouchButtonFactory'Class;
   type TouchButtonFactory_Access_Array is array (Natural range <>) of TouchButtonFactory_Access;
   type TouchButtonFactory_Access_Array_Access is access all TouchButtonFactory_Access_Array;
   type TouchButtonFactory_Access_Array_Access_Array is array (Natural range <>) of TouchButtonFactory_Access_Array_Access;
   type TouchButtonFactory_Access_Array_Access_Array_Access is access all TouchButtonFactory_Access_Array_Access_Array;
   type TouchButtonFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonFactory_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonFactory_Access_Array_Object'Class then TouchButtonFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TouchButtonFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonFactory_Access_Array_Access_Array_Object'Class then TouchButtonFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchButtonFactory_Package_References;

with org.allbinary.input.motion.button.TouchButtonFactory_Package_References;
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

package org.allbinary.input.motion.button.TouchButtonFactory_Package is

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


   subtype TouchButtonFactory_Access is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access;
   function "=" (Left, Right : TouchButtonFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References."=";
   subtype TouchButtonFactory_Access_Array is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array;
   function "=" (Left, Right : TouchButtonFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References."=";
   subtype TouchButtonFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array_Access;
   function "=" (Left, Right : TouchButtonFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References."=";
   function Java_Box (Value : TouchButtonFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References.Java_Box;
   function Java_Unbox_TouchButtonFactory_Access_Array (Value : access Java_Object'Class) return TouchButtonFactory_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References.Java_Unbox_TouchButtonFactory_Access_Array;
   subtype TouchButtonFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References."=";
   subtype TouchButtonFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References."=";
   function Java_Box (Value : TouchButtonFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References.Java_Box;
   function Java_Unbox_TouchButtonFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchButtonFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References.Java_Unbox_TouchButtonFactory_Access_Array_Access_Array;

   type TouchButtonFactory is new Java_Object with record
      LIST : BasicArrayList_Access;
      list_Case : BasicArrayList_Access;
      savedList : BasicArrayList_Access;
      saved : Boolean;
   end record;
   SINGLETON : TouchButtonFactory_Access;

   procedure Initialize (This : in out TouchButtonFactory'Class);
   function Create return TouchButtonFactory_Access;
   function getInstance return TouchButtonFactory_Access;
   procedure defaultList (This : in out TouchButtonFactory);
   procedure toggle (This : in out TouchButtonFactory; save : Boolean; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure setList (This : in out TouchButtonFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getList (This : in out TouchButtonFactory) return BasicArrayList_Access;

end org.allbinary.input.motion.button.TouchButtonFactory_Package;


