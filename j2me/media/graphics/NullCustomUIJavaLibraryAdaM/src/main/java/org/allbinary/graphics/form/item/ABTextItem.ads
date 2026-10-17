--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.CustomCustomItem_Package; use org.allbinary.graphics.form.item.CustomCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItemInterface_Package; use org.allbinary.graphics.form.item.ABCustomItemInterface_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package; use org.allbinary.graphics.form.item.ABStringComponent_Package;

package org.allbinary.graphics.form.item.ABTextItem_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type ABTextItem is tagged;
   type ABTextItem_Access is access all ABTextItem'Class;
   type ABTextItem_Access_Array is array (Natural range <>) of ABTextItem_Access;
   type ABTextItem_Access_Array_Access is access all ABTextItem_Access_Array;

   type ABTextItem is new CustomCustomItem and ABCustomItemInterface with null record;

   procedure Initialize (This : in out ABTextItem'Class; label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ABTextItem_Access;
   procedure keyPressed (This : in out ABTextItem; keyCode : Integer);
   procedure paintUnselected (This : in out ABTextItem; graphics : Graphics_Access; x : Integer; y : Integer);
   function getLabelStringComponent (This : in out ABTextItem) return ABStringComponent_Access;

end org.allbinary.graphics.form.item.ABTextItem_Package;


