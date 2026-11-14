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
limited with org.allbinary.util.BasicArrayListUtil_Package;
package org.allbinary.util.BasicArrayListUtil_Package_References is
   type BasicArrayListUtil_Access is access all org.allbinary.util.BasicArrayListUtil_Package.BasicArrayListUtil'Class;
   type BasicArrayListUtil_Access_Array is array (Natural range <>) of BasicArrayListUtil_Access;
   type BasicArrayListUtil_Access_Array_Access is access all BasicArrayListUtil_Access_Array;
   type BasicArrayListUtil_Access_Array_Access_Array is array (Natural range <>) of BasicArrayListUtil_Access_Array_Access;
   type BasicArrayListUtil_Access_Array_Access_Array_Access is access all BasicArrayListUtil_Access_Array_Access_Array;
   type BasicArrayListUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicArrayListUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicArrayListUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicArrayListUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicArrayListUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicArrayListUtil_Access_Array_Access is (if Value /= null and then Value.all in BasicArrayListUtil_Access_Array_Object'Class then BasicArrayListUtil_Access_Array_Object'Class (Value.all).Value else null);
   type BasicArrayListUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicArrayListUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicArrayListUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicArrayListUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicArrayListUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicArrayListUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicArrayListUtil_Access_Array_Access_Array_Object'Class then BasicArrayListUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.util.BasicArrayListUtil_Package_References;

with org.allbinary.util.BasicArrayListUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.rand.MyRandomFactory_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.util.BasicArrayListUtil_Package is

   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package Reference_Types is
   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   use type MyRandomFactory_Access;
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   use type MyRandomFactory_Access_Array;
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access;
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   use type MyRandomFactory_Access_Array_Access_Array;
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access_Array_Access;
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


   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   function Java_Box (Value : BasicArrayListUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.BasicArrayListUtil_Package_References.Java_Box;
   function Java_Unbox_BasicArrayListUtil_Access_Array (Value : access Java_Object'Class) return BasicArrayListUtil_Access_Array_Access renames org.allbinary.util.BasicArrayListUtil_Package_References.Java_Unbox_BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   function Java_Box (Value : BasicArrayListUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.BasicArrayListUtil_Package_References.Java_Box;
   function Java_Unbox_BasicArrayListUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicArrayListUtil_Access_Array_Access_Array_Access renames org.allbinary.util.BasicArrayListUtil_Package_References.Java_Unbox_BasicArrayListUtil_Access_Array_Access_Array;

   type BasicArrayListUtil is new Java_Object with record
      NULL_ARRAY_OF_ARRAY : BasicArrayList_Access_Array_Access_Array_Access;
      myRandomFactory : MyRandomFactory_Access;
      immutableInstance : BasicArrayList_Access;
   end record;
   instance : BasicArrayListUtil_Access;

   procedure Initialize (This : in out BasicArrayListUtil'Class);
   function Create return BasicArrayListUtil_Access;
   function getInstance return BasicArrayListUtil_Access;
   function getRandom (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Java_Object_Access;
   procedure getRandom (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getRandomIndex (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Integer;
   procedure getRandomIndex (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure reverse_Id (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function log (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Unbounded_String;
   procedure log (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getImmutableInstance (This : in out BasicArrayListUtil) return BasicArrayList_Access;
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.util.BasicArrayListUtil_Package;


