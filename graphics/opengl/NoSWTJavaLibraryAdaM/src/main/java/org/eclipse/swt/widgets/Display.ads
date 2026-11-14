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
limited with org.eclipse.swt.widgets.Display_Package;
package org.eclipse.swt.widgets.Display_Package_References is
   type Display_Access is access all org.eclipse.swt.widgets.Display_Package.Display'Class;
   type Display_Access_Array is array (Natural range <>) of Display_Access;
   type Display_Access_Array_Access is access all Display_Access_Array;
   type Display_Access_Array_Access_Array is array (Natural range <>) of Display_Access_Array_Access;
   type Display_Access_Array_Access_Array_Access is access all Display_Access_Array_Access_Array;
   type Display_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Display_Access_Array_Access;
   end record;
   function Java_Box (Value : Display_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Display_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Display_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Display_Access_Array_Access is (if Value /= null and then Value.all in Display_Access_Array_Object'Class then Display_Access_Array_Object'Class (Value.all).Value else null);
   type Display_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Display_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Display_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Display_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Display_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Display_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Display_Access_Array_Access_Array_Object'Class then Display_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.eclipse.swt.widgets.Display_Package_References;

with org.eclipse.swt.widgets.Display_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.eclipse.swt.widgets.Display_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Display_Access is org.eclipse.swt.widgets.Display_Package_References.Display_Access;
   function "=" (Left, Right : Display_Access) return Boolean renames org.eclipse.swt.widgets.Display_Package_References."=";
   subtype Display_Access_Array is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array;
   function "=" (Left, Right : Display_Access_Array) return Boolean renames org.eclipse.swt.widgets.Display_Package_References."=";
   subtype Display_Access_Array_Access is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array_Access;
   function "=" (Left, Right : Display_Access_Array_Access) return Boolean renames org.eclipse.swt.widgets.Display_Package_References."=";
   function Java_Box (Value : Display_Access_Array_Access) return Java_Object_Access renames org.eclipse.swt.widgets.Display_Package_References.Java_Box;
   function Java_Unbox_Display_Access_Array (Value : access Java_Object'Class) return Display_Access_Array_Access renames org.eclipse.swt.widgets.Display_Package_References.Java_Unbox_Display_Access_Array;
   subtype Display_Access_Array_Access_Array is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array_Access_Array;
   function "=" (Left, Right : Display_Access_Array_Access_Array) return Boolean renames org.eclipse.swt.widgets.Display_Package_References."=";
   subtype Display_Access_Array_Access_Array_Access is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Display_Access_Array_Access_Array_Access) return Boolean renames org.eclipse.swt.widgets.Display_Package_References."=";
   function Java_Box (Value : Display_Access_Array_Access_Array_Access) return Java_Object_Access renames org.eclipse.swt.widgets.Display_Package_References.Java_Box;
   function Java_Unbox_Display_Access_Array_Access_Array (Value : access Java_Object'Class) return Display_Access_Array_Access_Array_Access renames org.eclipse.swt.widgets.Display_Package_References.Java_Unbox_Display_Access_Array_Access_Array;

   type Display is new Java_Object with null record;

   procedure Initialize (This : in out Display'Class);
   function Create return Display_Access;
   procedure sleep (This : in out Display);

end org.eclipse.swt.widgets.Display_Package;


