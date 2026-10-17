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
with org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package; use org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package;
with org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package; use org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package;

package org.allbinary.logic.visual.dhtml.html.HtmlForm_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package HtmlInput_Package renames Standard.org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package;
   package HtmlTable_Package renames Standard.org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package;

   type HtmlForm is tagged;
   type HtmlForm_Access is access all HtmlForm'Class;
   type HtmlForm_Access_Array is array (Natural range <>) of HtmlForm_Access;
   type HtmlForm_Access_Array_Access is access all HtmlForm_Access_Array;

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

   procedure Initialize (This : in out HtmlForm'Class; action_Case : Unbounded_String);
   function Create (action_Case : Unbounded_String) return HtmlForm_Access;
   procedure setPost (This : in out HtmlForm);
   procedure setGet (This : in out HtmlForm);
   procedure addInput (This : in out HtmlForm; htmlInput : HtmlInput_Access);
   procedure addTable (This : in out HtmlForm; htmlTable : HtmlTable_Access);
   function toString (This : in out HtmlForm) return Unbounded_String;

end org.allbinary.logic.visual.dhtml.html.HtmlForm_Package;


