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
limited with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package;
package org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References is
   type LogoData_Access is access all org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package.LogoData'Class;
   type LogoData_Access_Array is array (Natural range <>) of LogoData_Access;
   type LogoData_Access_Array_Access is access all LogoData_Access_Array;
   type LogoData_Access_Array_Access_Array is array (Natural range <>) of LogoData_Access_Array_Access;
   type LogoData_Access_Array_Access_Array_Access is access all LogoData_Access_Array_Access_Array;
   type LogoData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogoData_Access_Array_Access;
   end record;
   function Java_Box (Value : LogoData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogoData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogoData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogoData_Access_Array_Access is (if Value /= null and then Value.all in LogoData_Access_Array_Object'Class then LogoData_Access_Array_Object'Class (Value.all).Value else null);
   type LogoData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogoData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogoData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogoData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogoData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogoData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogoData_Access_Array_Access_Array_Object'Class then LogoData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References;

with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LogoData_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References.LogoData_Access;
   function "=" (Left, Right : LogoData_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References."=";
   subtype LogoData_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References.LogoData_Access_Array;
   function "=" (Left, Right : LogoData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References."=";
   subtype LogoData_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References.LogoData_Access_Array_Access;
   function "=" (Left, Right : LogoData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References."=";
   function Java_Box (Value : LogoData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References.Java_Box;
   function Java_Unbox_LogoData_Access_Array (Value : access Java_Object'Class) return LogoData_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References.Java_Unbox_LogoData_Access_Array;
   subtype LogoData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References.LogoData_Access_Array_Access_Array;
   function "=" (Left, Right : LogoData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References."=";
   subtype LogoData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References.LogoData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogoData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References."=";
   function Java_Box (Value : LogoData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References.Java_Box;
   function Java_Unbox_LogoData_Access_Array_Access_Array (Value : access Java_Object'Class) return LogoData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package_References.Java_Unbox_LogoData_Access_Array_Access_Array;

   type LogoData is new Java_Object with record
      NAME : Unbounded_String;
      IMAGEPATH : Unbounded_String;
      IMAGEFILENAME : Unbounded_String;
      IMAGE : Unbounded_String;
   end record;
   instance : LogoData_Access;

   procedure Initialize (This : in out LogoData'Class);
   function Create return LogoData_Access;
   function getInstance return LogoData_Access;

end org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package;


