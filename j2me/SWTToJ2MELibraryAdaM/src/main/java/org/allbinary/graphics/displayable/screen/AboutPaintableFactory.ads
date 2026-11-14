--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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
limited with org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package;
package org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References is
   type AboutPaintableFactory_Access is access all org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package.AboutPaintableFactory'Class;
   type AboutPaintableFactory_Access_Array is array (Natural range <>) of AboutPaintableFactory_Access;
   type AboutPaintableFactory_Access_Array_Access is access all AboutPaintableFactory_Access_Array;
   type AboutPaintableFactory_Access_Array_Access_Array is array (Natural range <>) of AboutPaintableFactory_Access_Array_Access;
   type AboutPaintableFactory_Access_Array_Access_Array_Access is access all AboutPaintableFactory_Access_Array_Access_Array;
   type AboutPaintableFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AboutPaintableFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AboutPaintableFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AboutPaintableFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AboutPaintableFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AboutPaintableFactory_Access_Array_Access is (if Value /= null and then Value.all in AboutPaintableFactory_Access_Array_Object'Class then AboutPaintableFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AboutPaintableFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AboutPaintableFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AboutPaintableFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AboutPaintableFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AboutPaintableFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AboutPaintableFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AboutPaintableFactory_Access_Array_Access_Array_Object'Class then AboutPaintableFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References;

with org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;

package org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package is

   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package Reference_Types is
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   use type Paintable_Access;
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   use type Paintable_Access_Array;
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   use type Paintable_Access_Array_Access;
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   use type Paintable_Access_Array_Access_Array;
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   use type Paintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AboutPaintableFactory_Access is org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References.AboutPaintableFactory_Access;
   function "=" (Left, Right : AboutPaintableFactory_Access) return Boolean renames org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References."=";
   subtype AboutPaintableFactory_Access_Array is org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References.AboutPaintableFactory_Access_Array;
   function "=" (Left, Right : AboutPaintableFactory_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References."=";
   subtype AboutPaintableFactory_Access_Array_Access is org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References.AboutPaintableFactory_Access_Array_Access;
   function "=" (Left, Right : AboutPaintableFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References."=";
   function Java_Box (Value : AboutPaintableFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References.Java_Box;
   function Java_Unbox_AboutPaintableFactory_Access_Array (Value : access Java_Object'Class) return AboutPaintableFactory_Access_Array_Access renames org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References.Java_Unbox_AboutPaintableFactory_Access_Array;
   subtype AboutPaintableFactory_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References.AboutPaintableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AboutPaintableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References."=";
   subtype AboutPaintableFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References.AboutPaintableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AboutPaintableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References."=";
   function Java_Box (Value : AboutPaintableFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References.Java_Box;
   function Java_Unbox_AboutPaintableFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AboutPaintableFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package_References.Java_Unbox_AboutPaintableFactory_Access_Array_Access_Array;

   type AboutPaintableFactory is new Java_Object with record
      paintableArray : Paintable_Access_Array_Access;
   end record;
   instance : AboutPaintableFactory_Access;

   procedure Initialize (This : in out AboutPaintableFactory'Class);
   function Create return AboutPaintableFactory_Access;
   function getInstance return AboutPaintableFactory_Access;

end org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package;


