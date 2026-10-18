--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.graphics.form.item.ABTextItem_Package; use org.allbinary.graphics.form.item.ABTextItem_Package;

package org.allbinary.graphics.form.item.ABTextFieldItem_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;

   type ABTextFieldItem is tagged;
   type ABTextFieldItem_Access is access all ABTextFieldItem'Class;
   type ABTextFieldItem_Access_Array is array (Natural range <>) of ABTextFieldItem_Access;
   type ABTextFieldItem_Access_Array_Access is access all ABTextFieldItem_Access_Array;

   type ABTextFieldItem is new ABTextItem with record
      font : Font_Access;
   end record;

   procedure Initialize (This : in out ABTextFieldItem'Class; canvas_Param : access Canvas_Package.Canvas'Class; visitor_Param : access Visitor_Package.Visitor'Class; label : Unbounded_String; value : Unbounded_String; maxSize : Integer; layout : Integer; altText : Unbounded_String; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (canvas_Param : access Canvas_Package.Canvas'Class; visitor_Param : access Visitor_Package.Visitor'Class; label : Unbounded_String; value : Unbounded_String; maxSize : Integer; layout : Integer; altText : Unbounded_String; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABTextFieldItem_Access;
   function getLabel (This : in out ABTextFieldItem) return Unbounded_String;
   procedure setLabel (This : in out ABTextFieldItem; label : Unbounded_String);
   function getString (This : in out ABTextFieldItem) return Unbounded_String;
   procedure setString (This : in out ABTextFieldItem; string_Id : Unbounded_String);
   procedure setFocus (This : in out ABTextFieldItem; state : Boolean);
   function getFontHeight (This : in out ABTextFieldItem) return Integer;
   procedure setBackgroundBasicColorP (This : in out ABTextFieldItem; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setForegroundBasicColorP (This : in out ABTextFieldItem; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.graphics.form.item.ABTextFieldItem_Package;


