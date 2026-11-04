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

limited with org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package;
package org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References is
   type HtmlResetInput_Access is access all org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package.HtmlResetInput'Class;
   type HtmlResetInput_Access_Array is array (Natural range <>) of HtmlResetInput_Access;
   type HtmlResetInput_Access_Array_Access is access all HtmlResetInput_Access_Array;
   type HtmlResetInput_Access_Array_Access_Array is array (Natural range <>) of HtmlResetInput_Access_Array_Access;
   type HtmlResetInput_Access_Array_Access_Array_Access is access all HtmlResetInput_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References;

with org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlResetInput_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References.HtmlResetInput_Access;
   function "=" (Left, Right : HtmlResetInput_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References."=";
   subtype HtmlResetInput_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References.HtmlResetInput_Access_Array;
   function "=" (Left, Right : HtmlResetInput_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References."=";
   subtype HtmlResetInput_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References.HtmlResetInput_Access_Array_Access;
   function "=" (Left, Right : HtmlResetInput_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References."=";
   subtype HtmlResetInput_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References.HtmlResetInput_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlResetInput_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References."=";
   subtype HtmlResetInput_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References.HtmlResetInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlResetInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package_References."=";

   type HtmlResetInput is new Java_Object with null record;

   procedure Initialize (This : in out HtmlResetInput'Class);
   function Create return HtmlResetInput_Access;

end org.allbinary.logic.visual.dhtml.html.input.HtmlResetInput_Package;


