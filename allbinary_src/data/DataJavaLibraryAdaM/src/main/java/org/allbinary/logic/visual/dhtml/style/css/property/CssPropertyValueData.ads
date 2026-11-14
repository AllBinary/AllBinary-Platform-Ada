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
limited with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package;
package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References is
   type CssPropertyValueData_Access is access all org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package.CssPropertyValueData'Class;
   type CssPropertyValueData_Access_Array is array (Natural range <>) of CssPropertyValueData_Access;
   type CssPropertyValueData_Access_Array_Access is access all CssPropertyValueData_Access_Array;
   type CssPropertyValueData_Access_Array_Access_Array is array (Natural range <>) of CssPropertyValueData_Access_Array_Access;
   type CssPropertyValueData_Access_Array_Access_Array_Access is access all CssPropertyValueData_Access_Array_Access_Array;
   type CssPropertyValueData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CssPropertyValueData_Access_Array_Access;
   end record;
   function Java_Box (Value : CssPropertyValueData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CssPropertyValueData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CssPropertyValueData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CssPropertyValueData_Access_Array_Access is (if Value /= null and then Value.all in CssPropertyValueData_Access_Array_Object'Class then CssPropertyValueData_Access_Array_Object'Class (Value.all).Value else null);
   type CssPropertyValueData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CssPropertyValueData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CssPropertyValueData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CssPropertyValueData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CssPropertyValueData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CssPropertyValueData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CssPropertyValueData_Access_Array_Access_Array_Object'Class then CssPropertyValueData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References;

with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CssPropertyValueData_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References.CssPropertyValueData_Access;
   function "=" (Left, Right : CssPropertyValueData_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References."=";
   subtype CssPropertyValueData_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References.CssPropertyValueData_Access_Array;
   function "=" (Left, Right : CssPropertyValueData_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References."=";
   subtype CssPropertyValueData_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References.CssPropertyValueData_Access_Array_Access;
   function "=" (Left, Right : CssPropertyValueData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References."=";
   function Java_Box (Value : CssPropertyValueData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References.Java_Box;
   function Java_Unbox_CssPropertyValueData_Access_Array (Value : access Java_Object'Class) return CssPropertyValueData_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References.Java_Unbox_CssPropertyValueData_Access_Array;
   subtype CssPropertyValueData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References.CssPropertyValueData_Access_Array_Access_Array;
   function "=" (Left, Right : CssPropertyValueData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References."=";
   subtype CssPropertyValueData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References.CssPropertyValueData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CssPropertyValueData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References."=";
   function Java_Box (Value : CssPropertyValueData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References.Java_Box;
   function Java_Unbox_CssPropertyValueData_Access_Array_Access_Array (Value : access Java_Object'Class) return CssPropertyValueData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package_References.Java_Unbox_CssPropertyValueData_Access_Array_Access_Array;

   type CssPropertyValueData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : CssPropertyValueData_Access;

   procedure Initialize (This : in out CssPropertyValueData'Class);
   function Create return CssPropertyValueData_Access;
   function getInstance return CssPropertyValueData_Access;

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package;


