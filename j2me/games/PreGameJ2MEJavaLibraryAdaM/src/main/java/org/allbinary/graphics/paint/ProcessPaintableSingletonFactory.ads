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
limited with org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package;
package org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References is
   type ProcessPaintableSingletonFactory_Access is access all org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package.ProcessPaintableSingletonFactory'Class;
   type ProcessPaintableSingletonFactory_Access_Array is array (Natural range <>) of ProcessPaintableSingletonFactory_Access;
   type ProcessPaintableSingletonFactory_Access_Array_Access is access all ProcessPaintableSingletonFactory_Access_Array;
   type ProcessPaintableSingletonFactory_Access_Array_Access_Array is array (Natural range <>) of ProcessPaintableSingletonFactory_Access_Array_Access;
   type ProcessPaintableSingletonFactory_Access_Array_Access_Array_Access is access all ProcessPaintableSingletonFactory_Access_Array_Access_Array;
   type ProcessPaintableSingletonFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProcessPaintableSingletonFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ProcessPaintableSingletonFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProcessPaintableSingletonFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProcessPaintableSingletonFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProcessPaintableSingletonFactory_Access_Array_Access is (if Value /= null and then Value.all in ProcessPaintableSingletonFactory_Access_Array_Object'Class then ProcessPaintableSingletonFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ProcessPaintableSingletonFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProcessPaintableSingletonFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProcessPaintableSingletonFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProcessPaintableSingletonFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProcessPaintableSingletonFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProcessPaintableSingletonFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProcessPaintableSingletonFactory_Access_Array_Access_Array_Object'Class then ProcessPaintableSingletonFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References;

with org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.paint.ProcessPaintable_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package_References;

package org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package is

   package Reference_Types is
   subtype ProcessPaintable_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access;
   use type ProcessPaintable_Access;
   subtype ProcessPaintable_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array;
   use type ProcessPaintable_Access_Array;
   subtype ProcessPaintable_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access;
   use type ProcessPaintable_Access_Array_Access;
   subtype ProcessPaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array;
   use type ProcessPaintable_Access_Array_Access_Array;
   subtype ProcessPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array_Access;
   use type ProcessPaintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ProcessPaintableSingletonFactory_Access is org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References.ProcessPaintableSingletonFactory_Access;
   function "=" (Left, Right : ProcessPaintableSingletonFactory_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References."=";
   subtype ProcessPaintableSingletonFactory_Access_Array is org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References.ProcessPaintableSingletonFactory_Access_Array;
   function "=" (Left, Right : ProcessPaintableSingletonFactory_Access_Array) return Boolean renames org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References."=";
   subtype ProcessPaintableSingletonFactory_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References.ProcessPaintableSingletonFactory_Access_Array_Access;
   function "=" (Left, Right : ProcessPaintableSingletonFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References."=";
   function Java_Box (Value : ProcessPaintableSingletonFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References.Java_Box;
   function Java_Unbox_ProcessPaintableSingletonFactory_Access_Array (Value : access Java_Object'Class) return ProcessPaintableSingletonFactory_Access_Array_Access renames org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References.Java_Unbox_ProcessPaintableSingletonFactory_Access_Array;
   subtype ProcessPaintableSingletonFactory_Access_Array_Access_Array is org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References.ProcessPaintableSingletonFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ProcessPaintableSingletonFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References."=";
   subtype ProcessPaintableSingletonFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References.ProcessPaintableSingletonFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProcessPaintableSingletonFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References."=";
   function Java_Box (Value : ProcessPaintableSingletonFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References.Java_Box;
   function Java_Unbox_ProcessPaintableSingletonFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ProcessPaintableSingletonFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package_References.Java_Unbox_ProcessPaintableSingletonFactory_Access_Array_Access_Array;

   type ProcessPaintableSingletonFactory is new Java_Object with null record;
   SINGLETON : ProcessPaintable_Access;

   procedure Initialize (This : in out ProcessPaintableSingletonFactory'Class);
   function Create return ProcessPaintableSingletonFactory_Access;
   function getInstance return ProcessPaintable_Access;

end org.allbinary.graphics.paint.ProcessPaintableSingletonFactory_Package;


