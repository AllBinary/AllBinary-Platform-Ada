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

limited with org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;
package org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References is
   type HtmlTag_Access is access all org.allbinary.logic.visual.dhtml.html.HtmlTag_Package.HtmlTag'Class;
   type HtmlTag_Access_Array is array (Natural range <>) of HtmlTag_Access;
   type HtmlTag_Access_Array_Access is access all HtmlTag_Access_Array;
   type HtmlTag_Access_Array_Access_Array is array (Natural range <>) of HtmlTag_Access_Array_Access;
   type HtmlTag_Access_Array_Access_Array_Access is access all HtmlTag_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References;

with org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;

package org.allbinary.logic.visual.dhtml.html.HtmlTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlTag_Access is org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References.HtmlTag_Access;
   function "=" (Left, Right : HtmlTag_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References."=";
   subtype HtmlTag_Access_Array is org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References.HtmlTag_Access_Array;
   function "=" (Left, Right : HtmlTag_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References."=";
   subtype HtmlTag_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References.HtmlTag_Access_Array_Access;
   function "=" (Left, Right : HtmlTag_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References."=";
   subtype HtmlTag_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References.HtmlTag_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlTag_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References."=";
   subtype HtmlTag_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References.HtmlTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlTag_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References."=";

   type HtmlTag is new Java_Object with record
      otherAttributes : HashMap_Access;
   end record;

   procedure Initialize (This : in out HtmlTag'Class);
   function Create return HtmlTag_Access;
   procedure addAttribute (This : in out HtmlTag; key : Unbounded_String; value : Unbounded_String);

end org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;


