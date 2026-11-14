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
limited with org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package;
package org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References is
   type BasicColorCompositeSetterInterface_Access is access all org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package.BasicColorCompositeSetterInterface'Class;
   type BasicColorCompositeSetterInterface_Access_Array is array (Natural range <>) of BasicColorCompositeSetterInterface_Access;
   type BasicColorCompositeSetterInterface_Access_Array_Access is access all BasicColorCompositeSetterInterface_Access_Array;
   type BasicColorCompositeSetterInterface_Access_Array_Access_Array is array (Natural range <>) of BasicColorCompositeSetterInterface_Access_Array_Access;
   type BasicColorCompositeSetterInterface_Access_Array_Access_Array_Access is access all BasicColorCompositeSetterInterface_Access_Array_Access_Array;
   type BasicColorCompositeSetterInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicColorCompositeSetterInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicColorCompositeSetterInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicColorCompositeSetterInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicColorCompositeSetterInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicColorCompositeSetterInterface_Access_Array_Access is (if Value /= null and then Value.all in BasicColorCompositeSetterInterface_Access_Array_Object'Class then BasicColorCompositeSetterInterface_Access_Array_Object'Class (Value.all).Value else null);
   type BasicColorCompositeSetterInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicColorCompositeSetterInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicColorCompositeSetterInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicColorCompositeSetterInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicColorCompositeSetterInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicColorCompositeSetterInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicColorCompositeSetterInterface_Access_Array_Access_Array_Object'Class then BasicColorCompositeSetterInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References;

with org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package is

   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type BasicColorCompositeSetterInterface is interface;
   subtype BasicColorCompositeSetterInterface_Access is org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References.BasicColorCompositeSetterInterface_Access;
   function "=" (Left, Right : BasicColorCompositeSetterInterface_Access) return Boolean renames org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References."=";
   subtype BasicColorCompositeSetterInterface_Access_Array is org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References.BasicColorCompositeSetterInterface_Access_Array;
   function "=" (Left, Right : BasicColorCompositeSetterInterface_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References."=";
   subtype BasicColorCompositeSetterInterface_Access_Array_Access is org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References.BasicColorCompositeSetterInterface_Access_Array_Access;
   function "=" (Left, Right : BasicColorCompositeSetterInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References."=";
   function Java_Box (Value : BasicColorCompositeSetterInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References.Java_Box;
   function Java_Unbox_BasicColorCompositeSetterInterface_Access_Array (Value : access Java_Object'Class) return BasicColorCompositeSetterInterface_Access_Array_Access renames org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References.Java_Unbox_BasicColorCompositeSetterInterface_Access_Array;
   subtype BasicColorCompositeSetterInterface_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References.BasicColorCompositeSetterInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorCompositeSetterInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References."=";
   subtype BasicColorCompositeSetterInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References.BasicColorCompositeSetterInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorCompositeSetterInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References."=";
   function Java_Box (Value : BasicColorCompositeSetterInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References.Java_Box;
   function Java_Unbox_BasicColorCompositeSetterInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicColorCompositeSetterInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package_References.Java_Unbox_BasicColorCompositeSetterInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_BasicColorCompositeSetterInterface (Value : BasicColorCompositeSetterInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setBasicColorP (This : in out BasicColorCompositeSetterInterface; basicColor_Param : access BasicColor_Package.BasicColor'Class) is abstract;

end org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package;


