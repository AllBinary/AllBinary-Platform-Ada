--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.graphics.form.item.ABCustomImageItem_Package is

   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;

   type ABCustomImageItem is tagged;
   type ABCustomImageItem_Access is access all ABCustomImageItem'Class;
   type ABCustomImageItem_Access_Array is array (Natural range <>) of ABCustomImageItem_Access;
   type ABCustomImageItem_Access_Array_Access is access all ABCustomImageItem_Access_Array;

   type ABCustomImageItem is new ABCustomItem with record
      yOffset : Integer;
   end record;

   procedure Initialize (This : in out ABCustomImageItem'Class; label : Unbounded_String; image : Image_Access; layout : Integer; altText : Unbounded_String; basicColor : BasicColor_Access; yOffset : Integer);
   function Create (label : Unbounded_String; image : Image_Access; layout : Integer; altText : Unbounded_String; basicColor : BasicColor_Access; yOffset : Integer) return ABCustomImageItem_Access;
   function getImage (This : in out ABCustomImageItem) return Image_Access;
   procedure getImage (This : in out ABCustomImageItem);

end org.allbinary.graphics.form.item.ABCustomImageItem_Package;


