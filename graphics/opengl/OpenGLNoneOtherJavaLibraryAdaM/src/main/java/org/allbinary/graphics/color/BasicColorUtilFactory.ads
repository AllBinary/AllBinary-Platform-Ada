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
limited with org.allbinary.graphics.color.BasicColorUtilFactory_Package;
package org.allbinary.graphics.color.BasicColorUtilFactory_Package_References is
   type BasicColorUtilFactory_Access is access all org.allbinary.graphics.color.BasicColorUtilFactory_Package.BasicColorUtilFactory'Class;
   type BasicColorUtilFactory_Access_Array is array (Natural range <>) of BasicColorUtilFactory_Access;
   type BasicColorUtilFactory_Access_Array_Access is access all BasicColorUtilFactory_Access_Array;
   type BasicColorUtilFactory_Access_Array_Access_Array is array (Natural range <>) of BasicColorUtilFactory_Access_Array_Access;
   type BasicColorUtilFactory_Access_Array_Access_Array_Access is access all BasicColorUtilFactory_Access_Array_Access_Array;
   type BasicColorUtilFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicColorUtilFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicColorUtilFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicColorUtilFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicColorUtilFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicColorUtilFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicColorUtilFactory_Access_Array_Object'Class then BasicColorUtilFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicColorUtilFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicColorUtilFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicColorUtilFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicColorUtilFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicColorUtilFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicColorUtilFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicColorUtilFactory_Access_Array_Access_Array_Object'Class then BasicColorUtilFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.color.BasicColorUtilFactory_Package_References;

with org.allbinary.graphics.color.BasicColorUtilFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColorUtil_Package;
with org.allbinary.graphics.color.BasicColorUtil_Package_References;

package org.allbinary.graphics.color.BasicColorUtilFactory_Package is

   package Reference_Types is
   subtype BasicColorUtil_Access is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access;
   use type BasicColorUtil_Access;
   subtype BasicColorUtil_Access_Array is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array;
   use type BasicColorUtil_Access_Array;
   subtype BasicColorUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array_Access;
   use type BasicColorUtil_Access_Array_Access;
   subtype BasicColorUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array_Access_Array;
   use type BasicColorUtil_Access_Array_Access_Array;
   subtype BasicColorUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array_Access_Array_Access;
   use type BasicColorUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicColorUtilFactory_Access is org.allbinary.graphics.color.BasicColorUtilFactory_Package_References.BasicColorUtilFactory_Access;
   function "=" (Left, Right : BasicColorUtilFactory_Access) return Boolean renames org.allbinary.graphics.color.BasicColorUtilFactory_Package_References."=";
   subtype BasicColorUtilFactory_Access_Array is org.allbinary.graphics.color.BasicColorUtilFactory_Package_References.BasicColorUtilFactory_Access_Array;
   function "=" (Left, Right : BasicColorUtilFactory_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorUtilFactory_Package_References."=";
   subtype BasicColorUtilFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorUtilFactory_Package_References.BasicColorUtilFactory_Access_Array_Access;
   function "=" (Left, Right : BasicColorUtilFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorUtilFactory_Package_References."=";
   function Java_Box (Value : BasicColorUtilFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.BasicColorUtilFactory_Package_References.Java_Box;
   function Java_Unbox_BasicColorUtilFactory_Access_Array (Value : access Java_Object'Class) return BasicColorUtilFactory_Access_Array_Access renames org.allbinary.graphics.color.BasicColorUtilFactory_Package_References.Java_Unbox_BasicColorUtilFactory_Access_Array;
   subtype BasicColorUtilFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorUtilFactory_Package_References.BasicColorUtilFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorUtilFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorUtilFactory_Package_References."=";
   subtype BasicColorUtilFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorUtilFactory_Package_References.BasicColorUtilFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorUtilFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorUtilFactory_Package_References."=";
   function Java_Box (Value : BasicColorUtilFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.BasicColorUtilFactory_Package_References.Java_Box;
   function Java_Unbox_BasicColorUtilFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicColorUtilFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.BasicColorUtilFactory_Package_References.Java_Unbox_BasicColorUtilFactory_Access_Array_Access_Array;

   type BasicColorUtilFactory is new Java_Object with null record;

   procedure Initialize (This : in out BasicColorUtilFactory'Class);
   function Create return BasicColorUtilFactory_Access;
   function getInstance return BasicColorUtil_Access;

end org.allbinary.graphics.color.BasicColorUtilFactory_Package;


