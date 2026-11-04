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

limited with org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package;
package org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References is
   type HtmlPasswordInput_Access is access all org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package.HtmlPasswordInput'Class;
   type HtmlPasswordInput_Access_Array is array (Natural range <>) of HtmlPasswordInput_Access;
   type HtmlPasswordInput_Access_Array_Access is access all HtmlPasswordInput_Access_Array;
   type HtmlPasswordInput_Access_Array_Access_Array is array (Natural range <>) of HtmlPasswordInput_Access_Array_Access;
   type HtmlPasswordInput_Access_Array_Access_Array_Access is access all HtmlPasswordInput_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References;

with org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.visual.dhtml.html.input.HtmlLengthInput_Package; use org.allbinary.logic.visual.dhtml.html.input.HtmlLengthInput_Package;

package org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlPasswordInput_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References.HtmlPasswordInput_Access;
   function "=" (Left, Right : HtmlPasswordInput_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References."=";
   subtype HtmlPasswordInput_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References.HtmlPasswordInput_Access_Array;
   function "=" (Left, Right : HtmlPasswordInput_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References."=";
   subtype HtmlPasswordInput_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References.HtmlPasswordInput_Access_Array_Access;
   function "=" (Left, Right : HtmlPasswordInput_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References."=";
   subtype HtmlPasswordInput_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References.HtmlPasswordInput_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlPasswordInput_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References."=";
   subtype HtmlPasswordInput_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References.HtmlPasswordInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlPasswordInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package_References."=";

   type HtmlPasswordInput is new HtmlLengthInput with null record;

   procedure Initialize (This : in out HtmlPasswordInput'Class; before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlPasswordInput_Access;

end org.allbinary.logic.visual.dhtml.html.input.HtmlPasswordInput_Package;


