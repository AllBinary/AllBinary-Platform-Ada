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
limited with org.allbinary.logic.visual.theme.ThemeData_Package;
package org.allbinary.logic.visual.theme.ThemeData_Package_References is
   type ThemeData_Access is access all org.allbinary.logic.visual.theme.ThemeData_Package.ThemeData'Class;
   type ThemeData_Access_Array is array (Natural range <>) of ThemeData_Access;
   type ThemeData_Access_Array_Access is access all ThemeData_Access_Array;
   type ThemeData_Access_Array_Access_Array is array (Natural range <>) of ThemeData_Access_Array_Access;
   type ThemeData_Access_Array_Access_Array_Access is access all ThemeData_Access_Array_Access_Array;
   type ThemeData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThemeData_Access_Array_Access;
   end record;
   function Java_Box (Value : ThemeData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThemeData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThemeData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThemeData_Access_Array_Access is (if Value /= null and then Value.all in ThemeData_Access_Array_Object'Class then ThemeData_Access_Array_Object'Class (Value.all).Value else null);
   type ThemeData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThemeData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ThemeData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThemeData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThemeData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThemeData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ThemeData_Access_Array_Access_Array_Object'Class then ThemeData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.theme.ThemeData_Package_References;

with org.allbinary.logic.visual.theme.ThemeData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.theme.ThemeData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ThemeData_Access is org.allbinary.logic.visual.theme.ThemeData_Package_References.ThemeData_Access;
   function "=" (Left, Right : ThemeData_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeData_Package_References."=";
   subtype ThemeData_Access_Array is org.allbinary.logic.visual.theme.ThemeData_Package_References.ThemeData_Access_Array;
   function "=" (Left, Right : ThemeData_Access_Array) return Boolean renames org.allbinary.logic.visual.theme.ThemeData_Package_References."=";
   subtype ThemeData_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeData_Package_References.ThemeData_Access_Array_Access;
   function "=" (Left, Right : ThemeData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeData_Package_References."=";
   function Java_Box (Value : ThemeData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.theme.ThemeData_Package_References.Java_Box;
   function Java_Unbox_ThemeData_Access_Array (Value : access Java_Object'Class) return ThemeData_Access_Array_Access renames org.allbinary.logic.visual.theme.ThemeData_Package_References.Java_Unbox_ThemeData_Access_Array;
   subtype ThemeData_Access_Array_Access_Array is org.allbinary.logic.visual.theme.ThemeData_Package_References.ThemeData_Access_Array_Access_Array;
   function "=" (Left, Right : ThemeData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.theme.ThemeData_Package_References."=";
   subtype ThemeData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeData_Package_References.ThemeData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThemeData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeData_Package_References."=";
   function Java_Box (Value : ThemeData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.theme.ThemeData_Package_References.Java_Box;
   function Java_Unbox_ThemeData_Access_Array_Access_Array (Value : access Java_Object'Class) return ThemeData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.theme.ThemeData_Package_References.Java_Unbox_ThemeData_Access_Array_Access_Array;

   type ThemeData is new Java_Object with record
      NAME : Unbounded_String;
      PATH : Unbounded_String;
      PREVIEW_IMAGE_NAME : Unbounded_String;
      PREVIEW_IMAGE_PATH : Unbounded_String;
   end record;
   instance : ThemeData_Access;

   procedure Initialize (This : in out ThemeData'Class);
   function Create return ThemeData_Access;
   function getInstance return ThemeData_Access;

end org.allbinary.logic.visual.theme.ThemeData_Package;


