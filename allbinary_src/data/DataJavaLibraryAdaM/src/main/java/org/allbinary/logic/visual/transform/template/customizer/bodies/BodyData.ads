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
limited with org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
package org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References is
   type BodyData_Access is access all org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package.BodyData'Class;
   type BodyData_Access_Array is array (Natural range <>) of BodyData_Access;
   type BodyData_Access_Array_Access is access all BodyData_Access_Array;
   type BodyData_Access_Array_Access_Array is array (Natural range <>) of BodyData_Access_Array_Access;
   type BodyData_Access_Array_Access_Array_Access is access all BodyData_Access_Array_Access_Array;
   type BodyData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BodyData_Access_Array_Access;
   end record;
   function Java_Box (Value : BodyData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BodyData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BodyData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BodyData_Access_Array_Access is (if Value /= null and then Value.all in BodyData_Access_Array_Object'Class then BodyData_Access_Array_Object'Class (Value.all).Value else null);
   type BodyData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BodyData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BodyData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BodyData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BodyData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BodyData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BodyData_Access_Array_Access_Array_Object'Class then BodyData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References;

with org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BodyData_Access is org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References.BodyData_Access;
   function "=" (Left, Right : BodyData_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References."=";
   subtype BodyData_Access_Array is org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References.BodyData_Access_Array;
   function "=" (Left, Right : BodyData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References."=";
   subtype BodyData_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References.BodyData_Access_Array_Access;
   function "=" (Left, Right : BodyData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References."=";
   function Java_Box (Value : BodyData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References.Java_Box;
   function Java_Unbox_BodyData_Access_Array (Value : access Java_Object'Class) return BodyData_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References.Java_Unbox_BodyData_Access_Array;
   subtype BodyData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References.BodyData_Access_Array_Access_Array;
   function "=" (Left, Right : BodyData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References."=";
   subtype BodyData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References.BodyData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BodyData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References."=";
   function Java_Box (Value : BodyData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References.Java_Box;
   function Java_Unbox_BodyData_Access_Array_Access_Array (Value : access Java_Object'Class) return BodyData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package_References.Java_Unbox_BodyData_Access_Array_Access_Array;

   type BodyData is new Java_Object with record
      NAME : Unbounded_String;
      VIEWNAMEKEY : Unbounded_String;
      MIN : Integer;
   end record;
   instance : BodyData_Access;

   procedure Initialize (This : in out BodyData'Class);
   function Create return BodyData_Access;
   function getInstance return BodyData_Access;

end org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;


