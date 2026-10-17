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
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.CustomScreen_Package; use org.allbinary.graphics.form.CustomScreen_Package;

package org.allbinary.graphics.form.ABCustomForm_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ABCustomForm is tagged;
   type ABCustomForm_Access is access all ABCustomForm'Class;
   type ABCustomForm_Access_Array is array (Natural range <>) of ABCustomForm_Access;
   type ABCustomForm_Access_Array_Access is access all ABCustomForm_Access_Array;

   type ABCustomForm is new CustomScreen with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out ABCustomForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ABCustomForm_Access;
   function getAllitems (This : in out ABCustomForm) return ABCustomItem_Access_Array_Access;
   procedure getAllitems (This : in out ABCustomForm);
   function size (This : in out ABCustomForm) return Integer;
   procedure size (This : in out ABCustomForm);
   procedure setSelectedIndex (This : in out ABCustomForm; index : Integer);
   function getSelectedIndex (This : in out ABCustomForm) return Integer;
   procedure getSelectedIndex (This : in out ABCustomForm);
   procedure deleteAll (This : in out ABCustomForm);
   procedure delete (This : in out ABCustomForm; itemNum : Integer);
   function append (This : in out ABCustomForm; item : ABCustomItem_Access) return Integer;
   procedure append (This : in out ABCustomForm; item : ABCustomItem_Access);
   procedure insert (This : in out ABCustomForm; itemNum : Integer; item : ABCustomItem_Access);
   procedure set (This : in out ABCustomForm; itemNum : Integer; item : ABCustomItem_Access);
   function get (This : in out ABCustomForm; itemNum : Integer) return ABCustomItem_Access;
   procedure get (This : in out ABCustomForm; itemNum : Integer);
   function getWidth (This : in out ABCustomForm) return Integer;
   procedure getWidth (This : in out ABCustomForm);
   procedure paint (This : in out ABCustomForm; graphics : Graphics_Access);
   function getTitle (This : in out ABCustomForm) return Unbounded_String;
   procedure getTitle (This : in out ABCustomForm);

end org.allbinary.graphics.form.ABCustomForm_Package;


