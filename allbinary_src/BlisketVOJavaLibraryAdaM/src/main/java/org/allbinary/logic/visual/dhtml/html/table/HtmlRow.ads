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

limited with org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package;
package org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References is
   type HtmlRow_Access is access all org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package.HtmlRow'Class;
   type HtmlRow_Access_Array is array (Natural range <>) of HtmlRow_Access;
   type HtmlRow_Access_Array_Access is access all HtmlRow_Access_Array;
   type HtmlRow_Access_Array_Access_Array is array (Natural range <>) of HtmlRow_Access_Array_Access;
   type HtmlRow_Access_Array_Access_Array_Access is access all HtmlRow_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References;

with org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References;
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
limited with org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package;
with org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References;

package org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package is

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
   subtype HtmlCell_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.HtmlCell_Access;
   use type HtmlCell_Access;
   subtype HtmlCell_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.HtmlCell_Access_Array;
   use type HtmlCell_Access_Array;
   subtype HtmlCell_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.HtmlCell_Access_Array_Access;
   use type HtmlCell_Access_Array_Access;
   subtype HtmlCell_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.HtmlCell_Access_Array_Access_Array;
   use type HtmlCell_Access_Array_Access_Array;
   subtype HtmlCell_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.HtmlCell_Access_Array_Access_Array_Access;
   use type HtmlCell_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HtmlRow_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References.HtmlRow_Access;
   function "=" (Left, Right : HtmlRow_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References."=";
   subtype HtmlRow_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References.HtmlRow_Access_Array;
   function "=" (Left, Right : HtmlRow_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References."=";
   subtype HtmlRow_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References.HtmlRow_Access_Array_Access;
   function "=" (Left, Right : HtmlRow_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References."=";
   subtype HtmlRow_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References.HtmlRow_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlRow_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References."=";
   subtype HtmlRow_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References.HtmlRow_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlRow_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References."=";

   type HtmlRow is new HtmlTag with record
      END_Id : Unbounded_String;
      START : Unbounded_String;
      ENDTAG : Unbounded_String;
      numberOfColumns : Integer;
      before : Unbounded_String;
      after : Unbounded_String;
      htmlCellsVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out HtmlRow'Class; before : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; after : Unbounded_String) return HtmlRow_Access;
   procedure addCell (This : in out HtmlRow; htmlCell_Param : access HtmlCell_Package.HtmlCell'Class);
   function getNumberOfColumns (This : in out HtmlRow) return Integer;
   function toString (This : in out HtmlRow) return Unbounded_String;

end org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package;


