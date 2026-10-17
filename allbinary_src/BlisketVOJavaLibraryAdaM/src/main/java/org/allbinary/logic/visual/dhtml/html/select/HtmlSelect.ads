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
with org.allbinary.logic.io.LineReader_Package; use org.allbinary.logic.io.LineReader_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.dhtml.html.HtmlTag_Package; use org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;

package org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LineReader_Package renames org.allbinary.logic.io.LineReader_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package HtmlTag_Package renames org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;

   type HtmlSelect is tagged;
   type HtmlSelect_Access is access all HtmlSelect'Class;
   type HtmlSelect_Access_Array is array (Natural range <>) of HtmlSelect_Access;
   type HtmlSelect_Access_Array_Access is access all HtmlSelect_Access_Array;

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

   procedure Initialize (This : in out HtmlSelect'Class; before : Unbounded_String; size_Case : Unbounded_String; name_Case : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; size_Case : Unbounded_String; name_Case : Unbounded_String; after : Unbounded_String) return HtmlSelect_Access;
   procedure addOption (This : in out HtmlSelect; key : Unbounded_String);
   procedure addOptions (This : in out HtmlSelect; fileName : Unbounded_String);
   procedure setSelected (This : in out HtmlSelect; selected : Unbounded_String);
   function isMultiple (This : in out HtmlSelect) return Boolean;
   procedure isMultiple (This : in out HtmlSelect);
   procedure setMultiple (This : in out HtmlSelect; value : Boolean);
   function getOptions (This : in out HtmlSelect) return Unbounded_String;
   procedure getOptions (This : in out HtmlSelect);
   function toString (This : in out HtmlSelect) return Unbounded_String;
   procedure toString (This : in out HtmlSelect);

end org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package;


