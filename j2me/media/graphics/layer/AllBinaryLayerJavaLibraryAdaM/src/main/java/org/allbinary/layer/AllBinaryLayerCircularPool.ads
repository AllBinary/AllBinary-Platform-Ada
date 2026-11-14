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
limited with org.allbinary.layer.AllBinaryLayerCircularPool_Package;
package org.allbinary.layer.AllBinaryLayerCircularPool_Package_References is
   type AllBinaryLayerCircularPool_Access is access all org.allbinary.layer.AllBinaryLayerCircularPool_Package.AllBinaryLayerCircularPool'Class;
   type AllBinaryLayerCircularPool_Access_Array is array (Natural range <>) of AllBinaryLayerCircularPool_Access;
   type AllBinaryLayerCircularPool_Access_Array_Access is access all AllBinaryLayerCircularPool_Access_Array;
   type AllBinaryLayerCircularPool_Access_Array_Access_Array is array (Natural range <>) of AllBinaryLayerCircularPool_Access_Array_Access;
   type AllBinaryLayerCircularPool_Access_Array_Access_Array_Access is access all AllBinaryLayerCircularPool_Access_Array_Access_Array;
   type AllBinaryLayerCircularPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryLayerCircularPool_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryLayerCircularPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryLayerCircularPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryLayerCircularPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryLayerCircularPool_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryLayerCircularPool_Access_Array_Object'Class then AllBinaryLayerCircularPool_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryLayerCircularPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryLayerCircularPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryLayerCircularPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryLayerCircularPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryLayerCircularPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryLayerCircularPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryLayerCircularPool_Access_Array_Access_Array_Object'Class then AllBinaryLayerCircularPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.AllBinaryLayerCircularPool_Package_References;

with org.allbinary.layer.AllBinaryLayerCircularPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.BaseCircularPool_Package; use org.allbinary.logic.util.cache.BaseCircularPool_Package;
limited with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References;

package org.allbinary.layer.AllBinaryLayerCircularPool_Package is

   package BaseCircularPool_Package renames Standard.org.allbinary.logic.util.cache.BaseCircularPool_Package;
   package Reference_Types is
   subtype AllBinaryLayerFactoryInterface_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access;
   use type AllBinaryLayerFactoryInterface_Access;
   subtype AllBinaryLayerFactoryInterface_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array;
   use type AllBinaryLayerFactoryInterface_Access_Array;
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access;
   use type AllBinaryLayerFactoryInterface_Access_Array_Access;
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array;
   use type AllBinaryLayerFactoryInterface_Access_Array_Access_Array;
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access;
   use type AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryLayerCircularPool_Access is org.allbinary.layer.AllBinaryLayerCircularPool_Package_References.AllBinaryLayerCircularPool_Access;
   function "=" (Left, Right : AllBinaryLayerCircularPool_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerCircularPool_Package_References."=";
   subtype AllBinaryLayerCircularPool_Access_Array is org.allbinary.layer.AllBinaryLayerCircularPool_Package_References.AllBinaryLayerCircularPool_Access_Array;
   function "=" (Left, Right : AllBinaryLayerCircularPool_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerCircularPool_Package_References."=";
   subtype AllBinaryLayerCircularPool_Access_Array_Access is org.allbinary.layer.AllBinaryLayerCircularPool_Package_References.AllBinaryLayerCircularPool_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerCircularPool_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerCircularPool_Package_References."=";
   function Java_Box (Value : AllBinaryLayerCircularPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.AllBinaryLayerCircularPool_Package_References.Java_Box;
   function Java_Unbox_AllBinaryLayerCircularPool_Access_Array (Value : access Java_Object'Class) return AllBinaryLayerCircularPool_Access_Array_Access renames org.allbinary.layer.AllBinaryLayerCircularPool_Package_References.Java_Unbox_AllBinaryLayerCircularPool_Access_Array;
   subtype AllBinaryLayerCircularPool_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerCircularPool_Package_References.AllBinaryLayerCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerCircularPool_Package_References."=";
   subtype AllBinaryLayerCircularPool_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerCircularPool_Package_References.AllBinaryLayerCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerCircularPool_Package_References."=";
   function Java_Box (Value : AllBinaryLayerCircularPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.AllBinaryLayerCircularPool_Package_References.Java_Box;
   function Java_Unbox_AllBinaryLayerCircularPool_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryLayerCircularPool_Access_Array_Access_Array_Access renames org.allbinary.layer.AllBinaryLayerCircularPool_Package_References.Java_Unbox_AllBinaryLayerCircularPool_Access_Array_Access_Array;

   type AllBinaryLayerCircularPool is new BaseCircularPool with null record;

   procedure Initialize (This : in out AllBinaryLayerCircularPool'Class);
   function Create return AllBinaryLayerCircularPool_Access;
   procedure initAllBinaryLayerCircularPool (This : in out AllBinaryLayerCircularPool; allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer);

end org.allbinary.layer.AllBinaryLayerCircularPool_Package;


