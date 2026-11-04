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

limited with org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package;
package org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References is
   type HtmlSelect_Access is access all org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package.HtmlSelect'Class;
   type HtmlSelect_Access_Array is array (Natural range <>) of HtmlSelect_Access;
   type HtmlSelect_Access_Array_Access is access all HtmlSelect_Access_Array;
   type HtmlSelect_Access_Array_Access_Array is array (Natural range <>) of HtmlSelect_Access_Array_Access;
   type HtmlSelect_Access_Array_Access_Array_Access is access all HtmlSelect_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References;

with org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References;
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
with org.allbinary.logic.visual.dhtml.html.HtmlTag_Package; use org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;

package org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package HtmlTag_Package renames Standard.org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype HtmlSelect_Access is org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References.HtmlSelect_Access;
   function "=" (Left, Right : HtmlSelect_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References."=";
   subtype HtmlSelect_Access_Array is org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References.HtmlSelect_Access_Array;
   function "=" (Left, Right : HtmlSelect_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References."=";
   subtype HtmlSelect_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References.HtmlSelect_Access_Array_Access;
   function "=" (Left, Right : HtmlSelect_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References."=";
   subtype HtmlSelect_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References.HtmlSelect_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlSelect_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References."=";
   subtype HtmlSelect_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References.HtmlSelect_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlSelect_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package_References."=";

   type HtmlSelect is new HtmlTag with record
      END_Id : Unbounded_String;
      STARTSELECT : Unbounded_String;
      ENDSELECT : Unbounded_String;
      SIZE : Unbounded_String;
      NAME : Unbounded_String;
      STARTOPTION : Unbounded_String;
      SELETED : Unbounded_String;
      ENDOPTION : Unbounded_String;
      before : Unbounded_String;
      name_Case : Unbounded_String;
      after : Unbounded_String;
      size_Case : Unbounded_String;
      selected : Unbounded_String;
      options : BasicArrayList_Access;
      multiple : Unbounded_String;
      isMultipleSelect : Boolean;
   end record;

   procedure Initialize (This : in out HtmlSelect'Class; before : Unbounded_String; size : Unbounded_String; name : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; size : Unbounded_String; name : Unbounded_String; after : Unbounded_String) return HtmlSelect_Access;
   procedure addOption (This : in out HtmlSelect; key : Unbounded_String);
   procedure addOptions (This : in out HtmlSelect; fileName : Unbounded_String);
   procedure setSelected (This : in out HtmlSelect; selected : Unbounded_String);
   function isMultiple (This : in out HtmlSelect) return Boolean;
   procedure setMultiple (This : in out HtmlSelect; value : Boolean);
   function getOptions (This : in out HtmlSelect) return Unbounded_String;
   function toString (This : in out HtmlSelect) return Unbounded_String;

end org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package;


