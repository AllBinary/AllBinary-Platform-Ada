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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.dhtml.html.HtmlTag_Package; use org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;

package org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package HtmlTag_Package renames Standard.org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;

   type HtmlCell is tagged;
   type HtmlCell_Access is access all HtmlCell'Class;
   type HtmlCell_Access_Array is array (Natural range <>) of HtmlCell_Access;
   type HtmlCell_Access_Array_Access is access all HtmlCell_Access_Array;

   type HtmlCell is new HtmlTag with record
      END_Id : Unbounded_String;
      START : Unbounded_String;
      ENDTAG : Unbounded_String;
      HEIGHT : Unbounded_String;
      WIDTH : Unbounded_String;
      height_Case : Unbounded_String;
      width_Case : Unbounded_String;
      before : Unbounded_String;
      body_Id : Unbounded_String;
      after : Unbounded_String;
   end record;

   procedure Initialize (This : in out HtmlCell'Class; before : Unbounded_String; width_Case : Unbounded_String; height_Case : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; width_Case : Unbounded_String; height_Case : Unbounded_String; after : Unbounded_String) return HtmlCell_Access;
   procedure addText (This : in out HtmlCell; body_Id : Unbounded_String);
   function toString (This : in out HtmlCell) return Unbounded_String;

end org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package;


