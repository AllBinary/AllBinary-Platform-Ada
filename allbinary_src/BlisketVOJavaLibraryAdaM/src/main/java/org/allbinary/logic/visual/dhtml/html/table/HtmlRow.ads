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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.dhtml.html.HtmlTag_Package; use org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;

package org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package HtmlTag_Package renames Standard.org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;

   type HtmlRow is tagged;
   type HtmlRow_Access is access all HtmlRow'Class;
   type HtmlRow_Access_Array is array (Natural range <>) of HtmlRow_Access;
   type HtmlRow_Access_Array_Access is access all HtmlRow_Access_Array;

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
   procedure addCell (This : in out HtmlRow; htmlCell : HtmlCell_Access);
   function getNumberOfColumns (This : in out HtmlRow) return Integer;
   procedure getNumberOfColumns (This : in out HtmlRow);
   function toString (This : in out HtmlRow) return Unbounded_String;
   procedure toString (This : in out HtmlRow);

end org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package;


