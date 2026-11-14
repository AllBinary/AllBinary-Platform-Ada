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
limited with org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package;
package org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References is
   type GlobalsData_Access is access all org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package.GlobalsData'Class;
   type GlobalsData_Access_Array is array (Natural range <>) of GlobalsData_Access;
   type GlobalsData_Access_Array_Access is access all GlobalsData_Access_Array;
   type GlobalsData_Access_Array_Access_Array is array (Natural range <>) of GlobalsData_Access_Array_Access;
   type GlobalsData_Access_Array_Access_Array_Access is access all GlobalsData_Access_Array_Access_Array;
   type GlobalsData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GlobalsData_Access_Array_Access;
   end record;
   function Java_Box (Value : GlobalsData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GlobalsData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GlobalsData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GlobalsData_Access_Array_Access is (if Value /= null and then Value.all in GlobalsData_Access_Array_Object'Class then GlobalsData_Access_Array_Object'Class (Value.all).Value else null);
   type GlobalsData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GlobalsData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GlobalsData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GlobalsData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GlobalsData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GlobalsData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GlobalsData_Access_Array_Access_Array_Object'Class then GlobalsData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References;

with org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GlobalsData_Access is org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References.GlobalsData_Access;
   function "=" (Left, Right : GlobalsData_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References."=";
   subtype GlobalsData_Access_Array is org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References.GlobalsData_Access_Array;
   function "=" (Left, Right : GlobalsData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References."=";
   subtype GlobalsData_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References.GlobalsData_Access_Array_Access;
   function "=" (Left, Right : GlobalsData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References."=";
   function Java_Box (Value : GlobalsData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References.Java_Box;
   function Java_Unbox_GlobalsData_Access_Array (Value : access Java_Object'Class) return GlobalsData_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References.Java_Unbox_GlobalsData_Access_Array;
   subtype GlobalsData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References.GlobalsData_Access_Array_Access_Array;
   function "=" (Left, Right : GlobalsData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References."=";
   subtype GlobalsData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References.GlobalsData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GlobalsData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References."=";
   function Java_Box (Value : GlobalsData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References.Java_Box;
   function Java_Unbox_GlobalsData_Access_Array_Access_Array (Value : access Java_Object'Class) return GlobalsData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package_References.Java_Unbox_GlobalsData_Access_Array_Access_Array;

   type GlobalsData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out GlobalsData'Class);
   function Create return GlobalsData_Access;

end org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package;


