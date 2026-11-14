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

with AllBinary_Java;
limited with org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package;
package org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References is
   type HtmlTable_Access is access all org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package.HtmlTable'Class;
   type HtmlTable_Access_Array is array (Natural range <>) of HtmlTable_Access;
   type HtmlTable_Access_Array_Access is access all HtmlTable_Access_Array;
   type HtmlTable_Access_Array_Access_Array is array (Natural range <>) of HtmlTable_Access_Array_Access;
   type HtmlTable_Access_Array_Access_Array_Access is access all HtmlTable_Access_Array_Access_Array;
   type HtmlTable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlTable_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlTable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlTable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlTable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlTable_Access_Array_Access is (if Value /= null and then Value.all in HtmlTable_Access_Array_Object'Class then HtmlTable_Access_Array_Object'Class (Value.all).Value else null);
   type HtmlTable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlTable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlTable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlTable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlTable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlTable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HtmlTable_Access_Array_Access_Array_Object'Class then HtmlTable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References;

with org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References;
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
limited with org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package;
with org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References;

package org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package is

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
   subtype HtmlRow_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References.HtmlRow_Access;
   use type HtmlRow_Access;
   subtype HtmlRow_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References.HtmlRow_Access_Array;
   use type HtmlRow_Access_Array;
   subtype HtmlRow_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References.HtmlRow_Access_Array_Access;
   use type HtmlRow_Access_Array_Access;
   subtype HtmlRow_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References.HtmlRow_Access_Array_Access_Array;
   use type HtmlRow_Access_Array_Access_Array;
   subtype HtmlRow_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package_References.HtmlRow_Access_Array_Access_Array_Access;
   use type HtmlRow_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HtmlTable_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.HtmlTable_Access;
   function "=" (Left, Right : HtmlTable_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References."=";
   subtype HtmlTable_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.HtmlTable_Access_Array;
   function "=" (Left, Right : HtmlTable_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References."=";
   subtype HtmlTable_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.HtmlTable_Access_Array_Access;
   function "=" (Left, Right : HtmlTable_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References."=";
   function Java_Box (Value : HtmlTable_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.Java_Box;
   function Java_Unbox_HtmlTable_Access_Array (Value : access Java_Object'Class) return HtmlTable_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.Java_Unbox_HtmlTable_Access_Array;
   subtype HtmlTable_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.HtmlTable_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlTable_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References."=";
   subtype HtmlTable_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.HtmlTable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlTable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References."=";
   function Java_Box (Value : HtmlTable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.Java_Box;
   function Java_Unbox_HtmlTable_Access_Array_Access_Array (Value : access Java_Object'Class) return HtmlTable_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package_References.Java_Unbox_HtmlTable_Access_Array_Access_Array;

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

   procedure Initialize (This : in out HtmlTable'Class; before : Unbounded_String; cellpadding : Unbounded_String; cellspacing : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; cellpadding : Unbounded_String; cellspacing : Unbounded_String; after : Unbounded_String) return HtmlTable_Access;
   procedure addRow (This : in out HtmlTable; htmlRow_Param : access HtmlRow_Package.HtmlRow'Class);
   function toString (This : in out HtmlTable) return Unbounded_String;

end org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package;


