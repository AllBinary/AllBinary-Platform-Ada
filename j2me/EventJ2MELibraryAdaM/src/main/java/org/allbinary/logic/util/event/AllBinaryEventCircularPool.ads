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
limited with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
package org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References is
   type AllBinaryEventCircularPool_Access is access all org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package.AllBinaryEventCircularPool'Class;
   type AllBinaryEventCircularPool_Access_Array is array (Natural range <>) of AllBinaryEventCircularPool_Access;
   type AllBinaryEventCircularPool_Access_Array_Access is access all AllBinaryEventCircularPool_Access_Array;
   type AllBinaryEventCircularPool_Access_Array_Access_Array is array (Natural range <>) of AllBinaryEventCircularPool_Access_Array_Access;
   type AllBinaryEventCircularPool_Access_Array_Access_Array_Access is access all AllBinaryEventCircularPool_Access_Array_Access_Array;
   type AllBinaryEventCircularPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryEventCircularPool_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryEventCircularPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryEventCircularPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryEventCircularPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryEventCircularPool_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryEventCircularPool_Access_Array_Object'Class then AllBinaryEventCircularPool_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryEventCircularPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryEventCircularPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryEventCircularPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryEventCircularPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryEventCircularPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryEventCircularPool_Access_Array_Access_Array_Object'Class then AllBinaryEventCircularPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References;

with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.BaseCircularPool_Package; use org.allbinary.logic.util.cache.BaseCircularPool_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package_References;

package org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package is

   package BaseCircularPool_Package renames Standard.org.allbinary.logic.util.cache.BaseCircularPool_Package;
   package Reference_Types is
   subtype AllBinaryEventObjectFactoryInterface_Access is org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package_References.AllBinaryEventObjectFactoryInterface_Access;
   use type AllBinaryEventObjectFactoryInterface_Access;
   subtype AllBinaryEventObjectFactoryInterface_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package_References.AllBinaryEventObjectFactoryInterface_Access_Array;
   use type AllBinaryEventObjectFactoryInterface_Access_Array;
   subtype AllBinaryEventObjectFactoryInterface_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package_References.AllBinaryEventObjectFactoryInterface_Access_Array_Access;
   use type AllBinaryEventObjectFactoryInterface_Access_Array_Access;
   subtype AllBinaryEventObjectFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package_References.AllBinaryEventObjectFactoryInterface_Access_Array_Access_Array;
   use type AllBinaryEventObjectFactoryInterface_Access_Array_Access_Array;
   subtype AllBinaryEventObjectFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package_References.AllBinaryEventObjectFactoryInterface_Access_Array_Access_Array_Access;
   use type AllBinaryEventObjectFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryEventCircularPool_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   function Java_Box (Value : AllBinaryEventCircularPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.Java_Box;
   function Java_Unbox_AllBinaryEventCircularPool_Access_Array (Value : access Java_Object'Class) return AllBinaryEventCircularPool_Access_Array_Access renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.Java_Unbox_AllBinaryEventCircularPool_Access_Array;
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   function Java_Box (Value : AllBinaryEventCircularPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.Java_Box;
   function Java_Unbox_AllBinaryEventCircularPool_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryEventCircularPool_Access_Array_Access_Array_Access renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.Java_Unbox_AllBinaryEventCircularPool_Access_Array_Access_Array;

   type AllBinaryEventCircularPool is new BaseCircularPool with null record;

   procedure Initialize (This : in out AllBinaryEventCircularPool'Class; max : Integer);
   function Create (max : Integer) return AllBinaryEventCircularPool_Access;
   procedure initAllBinaryEventCircularPool (This : in out AllBinaryEventCircularPool; allBinaryEventObjectFactoryInterface_Param : access AllBinaryEventObjectFactoryInterface_Package.AllBinaryEventObjectFactoryInterface'Class);

end org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;


