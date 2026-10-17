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
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package; use org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package;

package org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package HtmlTag_Package renames Standard.org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;

   type HtmlTable is tagged;
   type HtmlTable_Access is access all HtmlTable'Class;
   type HtmlTable_Access_Array is array (Natural range <>) of HtmlTable_Access;
   type HtmlTable_Access_Array_Access is access all HtmlTable_Access_Array;

   type HtmlTable is new HtmlTag with record
      END_Id : Unbounded_String;
      START : Unbounded_String;
      ENDTAG : Unbounded_String;
      CLASS : Unbounded_String;
      DIRECTION : Unbounded_String;
      ID : Unbounded_String;
      LANG : Unbounded_String;
      UNITS : Unbounded_String;
      BORDER : Unbounded_String;
      CELLPADDING : Unbounded_String;
      CELLSPACING : Unbounded_String;
      COLS : Unbounded_String;
      FLOAT_Id : Unbounded_String;
      FRAME : Unbounded_String;
      RULES : Unbounded_String;
      STYLE : Unbounded_String;
      BORDERCOLLAPSE : Unbounded_String;
      numberOfColumns : Integer;
      before : Unbounded_String;
      border_Case : Unbounded_String;
      cellpadding_Case : Unbounded_String;
      cellspacing_Case : Unbounded_String;
      style_Case : Unbounded_String;
      name : Unbounded_String;
      after : Unbounded_String;
      htmlRowsVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out HtmlTable'Class; before : Unbounded_String; cellpadding_Case : Unbounded_String; cellspacing_Case : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; cellpadding_Case : Unbounded_String; cellspacing_Case : Unbounded_String; after : Unbounded_String) return HtmlTable_Access;
   procedure addRow (This : in out HtmlTable; htmlRow_Param : access HtmlRow'Class);
   function toString (This : in out HtmlTable) return Unbounded_String;

end org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package;


