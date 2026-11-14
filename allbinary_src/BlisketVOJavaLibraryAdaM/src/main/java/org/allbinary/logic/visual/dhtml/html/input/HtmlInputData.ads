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
limited with org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package;
package org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References is
   type HtmlInputData_Access is access all org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package.HtmlInputData'Class;
   type HtmlInputData_Access_Array is array (Natural range <>) of HtmlInputData_Access;
   type HtmlInputData_Access_Array_Access is access all HtmlInputData_Access_Array;
   type HtmlInputData_Access_Array_Access_Array is array (Natural range <>) of HtmlInputData_Access_Array_Access;
   type HtmlInputData_Access_Array_Access_Array_Access is access all HtmlInputData_Access_Array_Access_Array;
   type HtmlInputData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlInputData_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlInputData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlInputData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlInputData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlInputData_Access_Array_Access is (if Value /= null and then Value.all in HtmlInputData_Access_Array_Object'Class then HtmlInputData_Access_Array_Object'Class (Value.all).Value else null);
   type HtmlInputData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlInputData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlInputData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlInputData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlInputData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlInputData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HtmlInputData_Access_Array_Access_Array_Object'Class then HtmlInputData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References;

with org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlInputData_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References.HtmlInputData_Access;
   function "=" (Left, Right : HtmlInputData_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References."=";
   subtype HtmlInputData_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References.HtmlInputData_Access_Array;
   function "=" (Left, Right : HtmlInputData_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References."=";
   subtype HtmlInputData_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References.HtmlInputData_Access_Array_Access;
   function "=" (Left, Right : HtmlInputData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References."=";
   function Java_Box (Value : HtmlInputData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References.Java_Box;
   function Java_Unbox_HtmlInputData_Access_Array (Value : access Java_Object'Class) return HtmlInputData_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References.Java_Unbox_HtmlInputData_Access_Array;
   subtype HtmlInputData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References.HtmlInputData_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlInputData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References."=";
   subtype HtmlInputData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References.HtmlInputData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlInputData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References."=";
   function Java_Box (Value : HtmlInputData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References.Java_Box;
   function Java_Unbox_HtmlInputData_Access_Array_Access_Array (Value : access Java_Object'Class) return HtmlInputData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package_References.Java_Unbox_HtmlInputData_Access_Array_Access_Array;

   type HtmlInputData is new Java_Object with record
      TEXT : Unbounded_String;
      RADIO : Unbounded_String;
      CHECKBOX : Unbounded_String;
      HIDDEN : Unbounded_String;
      IMAGE : Unbounded_String;
      PASSWORD : Unbounded_String;
      RESET : Unbounded_String;
      SUBMIT : Unbounded_String;
      TYPES : Unbounded_String_Array_Access;
   end record;
   instance : HtmlInputData_Access;

   procedure Initialize (This : in out HtmlInputData'Class);
   function Create return HtmlInputData_Access;
   function getInstance return HtmlInputData_Access;

end org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package;


