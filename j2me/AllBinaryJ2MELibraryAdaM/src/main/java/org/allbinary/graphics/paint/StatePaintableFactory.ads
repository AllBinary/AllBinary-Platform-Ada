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
limited with org.allbinary.graphics.paint.StatePaintableFactory_Package;
package org.allbinary.graphics.paint.StatePaintableFactory_Package_References is
   type StatePaintableFactory_Access is access all org.allbinary.graphics.paint.StatePaintableFactory_Package.StatePaintableFactory'Class;
   type StatePaintableFactory_Access_Array is array (Natural range <>) of StatePaintableFactory_Access;
   type StatePaintableFactory_Access_Array_Access is access all StatePaintableFactory_Access_Array;
   type StatePaintableFactory_Access_Array_Access_Array is array (Natural range <>) of StatePaintableFactory_Access_Array_Access;
   type StatePaintableFactory_Access_Array_Access_Array_Access is access all StatePaintableFactory_Access_Array_Access_Array;
   type StatePaintableFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StatePaintableFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : StatePaintableFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StatePaintableFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StatePaintableFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StatePaintableFactory_Access_Array_Access is (if Value /= null and then Value.all in StatePaintableFactory_Access_Array_Object'Class then StatePaintableFactory_Access_Array_Object'Class (Value.all).Value else null);
   type StatePaintableFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StatePaintableFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StatePaintableFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StatePaintableFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StatePaintableFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StatePaintableFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StatePaintableFactory_Access_Array_Access_Array_Object'Class then StatePaintableFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.paint.StatePaintableFactory_Package_References;

with org.allbinary.graphics.paint.StatePaintableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.paint.StatePaintable_Package;
with org.allbinary.graphics.paint.StatePaintable_Package_References;

package org.allbinary.graphics.paint.StatePaintableFactory_Package is

   package Reference_Types is
   subtype StatePaintable_Access is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access;
   use type StatePaintable_Access;
   subtype StatePaintable_Access_Array is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array;
   use type StatePaintable_Access_Array;
   subtype StatePaintable_Access_Array_Access is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array_Access;
   use type StatePaintable_Access_Array_Access;
   subtype StatePaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array_Access_Array;
   use type StatePaintable_Access_Array_Access_Array;
   subtype StatePaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array_Access_Array_Access;
   use type StatePaintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StatePaintableFactory_Access is org.allbinary.graphics.paint.StatePaintableFactory_Package_References.StatePaintableFactory_Access;
   function "=" (Left, Right : StatePaintableFactory_Access) return Boolean renames org.allbinary.graphics.paint.StatePaintableFactory_Package_References."=";
   subtype StatePaintableFactory_Access_Array is org.allbinary.graphics.paint.StatePaintableFactory_Package_References.StatePaintableFactory_Access_Array;
   function "=" (Left, Right : StatePaintableFactory_Access_Array) return Boolean renames org.allbinary.graphics.paint.StatePaintableFactory_Package_References."=";
   subtype StatePaintableFactory_Access_Array_Access is org.allbinary.graphics.paint.StatePaintableFactory_Package_References.StatePaintableFactory_Access_Array_Access;
   function "=" (Left, Right : StatePaintableFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.StatePaintableFactory_Package_References."=";
   function Java_Box (Value : StatePaintableFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.paint.StatePaintableFactory_Package_References.Java_Box;
   function Java_Unbox_StatePaintableFactory_Access_Array (Value : access Java_Object'Class) return StatePaintableFactory_Access_Array_Access renames org.allbinary.graphics.paint.StatePaintableFactory_Package_References.Java_Unbox_StatePaintableFactory_Access_Array;
   subtype StatePaintableFactory_Access_Array_Access_Array is org.allbinary.graphics.paint.StatePaintableFactory_Package_References.StatePaintableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : StatePaintableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.StatePaintableFactory_Package_References."=";
   subtype StatePaintableFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.StatePaintableFactory_Package_References.StatePaintableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StatePaintableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.StatePaintableFactory_Package_References."=";
   function Java_Box (Value : StatePaintableFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.paint.StatePaintableFactory_Package_References.Java_Box;
   function Java_Unbox_StatePaintableFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return StatePaintableFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.paint.StatePaintableFactory_Package_References.Java_Unbox_StatePaintableFactory_Access_Array_Access_Array;

   type StatePaintableFactory is new Java_Object with null record;
   instance : StatePaintable_Access;

   procedure Initialize (This : in out StatePaintableFactory'Class);
   function Create return StatePaintableFactory_Access;
   function getInstance return StatePaintable_Access;

end org.allbinary.graphics.paint.StatePaintableFactory_Package;


