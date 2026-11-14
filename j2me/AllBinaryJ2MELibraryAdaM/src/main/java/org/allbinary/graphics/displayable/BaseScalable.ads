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
limited with org.allbinary.graphics.displayable.BaseScalable_Package;
package org.allbinary.graphics.displayable.BaseScalable_Package_References is
   type BaseScalable_Access is access all org.allbinary.graphics.displayable.BaseScalable_Package.BaseScalable'Class;
   type BaseScalable_Access_Array is array (Natural range <>) of BaseScalable_Access;
   type BaseScalable_Access_Array_Access is access all BaseScalable_Access_Array;
   type BaseScalable_Access_Array_Access_Array is array (Natural range <>) of BaseScalable_Access_Array_Access;
   type BaseScalable_Access_Array_Access_Array_Access is access all BaseScalable_Access_Array_Access_Array;
   type BaseScalable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseScalable_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseScalable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseScalable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseScalable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseScalable_Access_Array_Access is (if Value /= null and then Value.all in BaseScalable_Access_Array_Object'Class then BaseScalable_Access_Array_Object'Class (Value.all).Value else null);
   type BaseScalable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseScalable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseScalable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseScalable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseScalable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseScalable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BaseScalable_Access_Array_Access_Array_Object'Class then BaseScalable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.BaseScalable_Package_References;

with org.allbinary.graphics.displayable.BaseScalable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.displayable.ScalableListener_Package; use org.allbinary.graphics.displayable.ScalableListener_Package;

package org.allbinary.graphics.displayable.BaseScalable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BaseScalable_Access is org.allbinary.graphics.displayable.BaseScalable_Package_References.BaseScalable_Access;
   function "=" (Left, Right : BaseScalable_Access) return Boolean renames org.allbinary.graphics.displayable.BaseScalable_Package_References."=";
   subtype BaseScalable_Access_Array is org.allbinary.graphics.displayable.BaseScalable_Package_References.BaseScalable_Access_Array;
   function "=" (Left, Right : BaseScalable_Access_Array) return Boolean renames org.allbinary.graphics.displayable.BaseScalable_Package_References."=";
   subtype BaseScalable_Access_Array_Access is org.allbinary.graphics.displayable.BaseScalable_Package_References.BaseScalable_Access_Array_Access;
   function "=" (Left, Right : BaseScalable_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.BaseScalable_Package_References."=";
   function Java_Box (Value : BaseScalable_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.BaseScalable_Package_References.Java_Box;
   function Java_Unbox_BaseScalable_Access_Array (Value : access Java_Object'Class) return BaseScalable_Access_Array_Access renames org.allbinary.graphics.displayable.BaseScalable_Package_References.Java_Unbox_BaseScalable_Access_Array;
   subtype BaseScalable_Access_Array_Access_Array is org.allbinary.graphics.displayable.BaseScalable_Package_References.BaseScalable_Access_Array_Access_Array;
   function "=" (Left, Right : BaseScalable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.BaseScalable_Package_References."=";
   subtype BaseScalable_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.BaseScalable_Package_References.BaseScalable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseScalable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.BaseScalable_Package_References."=";
   function Java_Box (Value : BaseScalable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.BaseScalable_Package_References.Java_Box;
   function Java_Unbox_BaseScalable_Access_Array_Access_Array (Value : access Java_Object'Class) return BaseScalable_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.BaseScalable_Package_References.Java_Unbox_BaseScalable_Access_Array_Access_Array;

   type BaseScalable is new Java_Object and ScalableListener with null record;

   procedure Initialize (This : in out BaseScalable'Class);
   function Create return BaseScalable_Access;
   function getRatio (This : in out BaseScalable; ratio : Float) return Float;
   procedure getRatio (This : in out BaseScalable; ratio : Float);
   function getLeft (This : in out BaseScalable; xOffset : Integer) return Integer;
   procedure getLeft (This : in out BaseScalable; xOffset : Integer);
   function getTop (This : in out BaseScalable; yOffset : Integer) return Integer;
   procedure getTop (This : in out BaseScalable; yOffset : Integer);
   procedure scale (This : in out BaseScalable; ratio : Float);

end org.allbinary.graphics.displayable.BaseScalable_Package;


