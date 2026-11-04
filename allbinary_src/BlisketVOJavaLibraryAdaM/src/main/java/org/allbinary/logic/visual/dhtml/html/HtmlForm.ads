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

limited with org.allbinary.logic.visual.dhtml.html.HtmlForm_Package;
package org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References is
   type HtmlForm_Access is access all org.allbinary.logic.visual.dhtml.html.HtmlForm_Package.HtmlForm'Class;
   type HtmlForm_Access_Array is array (Natural range <>) of HtmlForm_Access;
   type HtmlForm_Access_Array_Access is access all HtmlForm_Access_Array;
   type HtmlForm_Access_Array_Access_Array is array (Natural range <>) of HtmlForm_Access_Array_Access;
   type HtmlForm_Access_Array_Access_Array_Access is access all HtmlForm_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References;

with org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package;
with org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package_References;
limited with org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package;
with org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References;

package org.allbinary.logic.visual.dhtml.html.HtmlForm_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package HtmlInput_Package renames Standard.org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package;
   package HtmlTable_Package renames Standard.org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype HtmlInput_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package_References.HtmlInput_Access;
   use type HtmlInput_Access;
   subtype HtmlInput_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package_References.HtmlInput_Access_Array;
   use type HtmlInput_Access_Array;
   subtype HtmlInput_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package_References.HtmlInput_Access_Array_Access;
   use type HtmlInput_Access_Array_Access;
   subtype HtmlInput_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package_References.HtmlInput_Access_Array_Access_Array;
   use type HtmlInput_Access_Array_Access_Array;
   subtype HtmlInput_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package_References.HtmlInput_Access_Array_Access_Array_Access;
   use type HtmlInput_Access_Array_Access_Array_Access;
   subtype HtmlTable_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.HtmlTable_Access;
   use type HtmlTable_Access;
   subtype HtmlTable_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.HtmlTable_Access_Array;
   use type HtmlTable_Access_Array;
   subtype HtmlTable_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.HtmlTable_Access_Array_Access;
   use type HtmlTable_Access_Array_Access;
   subtype HtmlTable_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.HtmlTable_Access_Array_Access_Array;
   use type HtmlTable_Access_Array_Access_Array;
   subtype HtmlTable_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.HtmlTable_Access_Array_Access_Array_Access;
   use type HtmlTable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HtmlForm_Access is org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References.HtmlForm_Access;
   function "=" (Left, Right : HtmlForm_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References."=";
   subtype HtmlForm_Access_Array is org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References.HtmlForm_Access_Array;
   function "=" (Left, Right : HtmlForm_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References."=";
   subtype HtmlForm_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References.HtmlForm_Access_Array_Access;
   function "=" (Left, Right : HtmlForm_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References."=";
   subtype HtmlForm_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References.HtmlForm_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlForm_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References."=";
   subtype HtmlForm_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References.HtmlForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlForm_Package_References."=";

   type HtmlForm is new Java_Object with record
      FORMBEGIN : Unbounded_String;
      END_Id : Unbounded_String;
      FORMEND : Unbounded_String;
      ACTION : Unbounded_String;
      GET : Unbounded_String;
      POST : Unbounded_String;
      METHODS : Unbounded_String_Array_Access;
      METHOD : Unbounded_String;
      method_Case : Unbounded_String;
      action_Case : Unbounded_String;
      inputs : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out HtmlForm'Class; action : Unbounded_String);
   function Create (action : Unbounded_String) return HtmlForm_Access;
   procedure setPost (This : in out HtmlForm);
   procedure setGet (This : in out HtmlForm);
   procedure addInput (This : in out HtmlForm; htmlInput_Param : access HtmlInput_Package.HtmlInput'Class);
   procedure addTable (This : in out HtmlForm; htmlTable_Param : access HtmlTable_Package.HtmlTable'Class);
   function toString (This : in out HtmlForm) return Unbounded_String;

end org.allbinary.logic.visual.dhtml.html.HtmlForm_Package;


