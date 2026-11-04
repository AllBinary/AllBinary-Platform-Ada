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

limited with org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package;
package org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References is
   type HtmlHiddenInput_Access is access all org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package.HtmlHiddenInput'Class;
   type HtmlHiddenInput_Access_Array is array (Natural range <>) of HtmlHiddenInput_Access;
   type HtmlHiddenInput_Access_Array_Access is access all HtmlHiddenInput_Access_Array;
   type HtmlHiddenInput_Access_Array_Access_Array is array (Natural range <>) of HtmlHiddenInput_Access_Array_Access;
   type HtmlHiddenInput_Access_Array_Access_Array_Access is access all HtmlHiddenInput_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References;

with org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlHiddenInput_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References.HtmlHiddenInput_Access;
   function "=" (Left, Right : HtmlHiddenInput_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References."=";
   subtype HtmlHiddenInput_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References.HtmlHiddenInput_Access_Array;
   function "=" (Left, Right : HtmlHiddenInput_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References."=";
   subtype HtmlHiddenInput_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References.HtmlHiddenInput_Access_Array_Access;
   function "=" (Left, Right : HtmlHiddenInput_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References."=";
   subtype HtmlHiddenInput_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References.HtmlHiddenInput_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlHiddenInput_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References."=";
   subtype HtmlHiddenInput_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References.HtmlHiddenInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlHiddenInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package_References."=";

   type HtmlHiddenInput is new Java_Object with null record;

   procedure Initialize (This : in out HtmlHiddenInput'Class);
   function Create return HtmlHiddenInput_Access;

end org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package;


