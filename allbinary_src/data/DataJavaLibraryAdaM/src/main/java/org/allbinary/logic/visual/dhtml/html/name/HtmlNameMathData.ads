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

limited with org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package;
package org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References is
   type HtmlNameMathData_Access is access all org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package.HtmlNameMathData'Class;
   type HtmlNameMathData_Access_Array is array (Natural range <>) of HtmlNameMathData_Access;
   type HtmlNameMathData_Access_Array_Access is access all HtmlNameMathData_Access_Array;
   type HtmlNameMathData_Access_Array_Access_Array is array (Natural range <>) of HtmlNameMathData_Access_Array_Access;
   type HtmlNameMathData_Access_Array_Access_Array_Access is access all HtmlNameMathData_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References;

with org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlNameMathData_Access is org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References.HtmlNameMathData_Access;
   function "=" (Left, Right : HtmlNameMathData_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References."=";
   subtype HtmlNameMathData_Access_Array is org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References.HtmlNameMathData_Access_Array;
   function "=" (Left, Right : HtmlNameMathData_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References."=";
   subtype HtmlNameMathData_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References.HtmlNameMathData_Access_Array_Access;
   function "=" (Left, Right : HtmlNameMathData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References."=";
   subtype HtmlNameMathData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References.HtmlNameMathData_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlNameMathData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References."=";
   subtype HtmlNameMathData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References.HtmlNameMathData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlNameMathData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package_References."=";

   type HtmlNameMathData is new Java_Object with record
      EQUALS : Unbounded_String;
      PLUS : Unbounded_String;
      MINUS : Unbounded_String;
      DIVIDE : Unbounded_String;
      MULTIPLY : Unbounded_String;
   end record;
   instance : HtmlNameMathData_Access;

   procedure Initialize (This : in out HtmlNameMathData'Class);
   function Create return HtmlNameMathData_Access;
   function getInstance return HtmlNameMathData_Access;

end org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package;


