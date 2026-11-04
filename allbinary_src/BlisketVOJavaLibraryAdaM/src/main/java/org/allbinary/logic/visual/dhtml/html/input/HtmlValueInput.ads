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

limited with org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package;
package org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References is
   type HtmlValueInput_Access is access all org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package.HtmlValueInput'Class;
   type HtmlValueInput_Access_Array is array (Natural range <>) of HtmlValueInput_Access;
   type HtmlValueInput_Access_Array_Access is access all HtmlValueInput_Access_Array;
   type HtmlValueInput_Access_Array_Access_Array is array (Natural range <>) of HtmlValueInput_Access_Array_Access;
   type HtmlValueInput_Access_Array_Access_Array_Access is access all HtmlValueInput_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References;

with org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package; use org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package;

package org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlValueInput_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References.HtmlValueInput_Access;
   function "=" (Left, Right : HtmlValueInput_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References."=";
   subtype HtmlValueInput_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References.HtmlValueInput_Access_Array;
   function "=" (Left, Right : HtmlValueInput_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References."=";
   subtype HtmlValueInput_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References.HtmlValueInput_Access_Array_Access;
   function "=" (Left, Right : HtmlValueInput_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References."=";
   subtype HtmlValueInput_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References.HtmlValueInput_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlValueInput_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References."=";
   subtype HtmlValueInput_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References.HtmlValueInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlValueInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package_References."=";

   type HtmlValueInput is new HtmlInput with record
      value_Case : Unbounded_String;
      VALUE : Unbounded_String;
   end record;

   procedure Initialize (This : in out HtmlValueInput'Class; before : Unbounded_String; type_Id : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; type_Id : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlValueInput_Access;

end org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package;


