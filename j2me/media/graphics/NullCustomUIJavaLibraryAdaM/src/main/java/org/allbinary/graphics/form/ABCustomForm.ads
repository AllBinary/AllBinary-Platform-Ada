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

   procedure Initialize (This : in out ABCustomForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABCustomForm_Access;
   function getAllitems (This : in out ABCustomForm) return ABCustomItem_Access_Array_Access;
   function size (This : in out ABCustomForm) return Integer;
   procedure setSelectedIndex (This : in out ABCustomForm; index : Integer);
   function getSelectedIndex (This : in out ABCustomForm) return Integer;
   procedure deleteAll (This : in out ABCustomForm);
   procedure delete (This : in out ABCustomForm; itemNum : Integer);
   function append (This : in out ABCustomForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class) return Integer;
   procedure append (This : in out ABCustomForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   procedure insert (This : in out ABCustomForm; itemNum : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   procedure set (This : in out ABCustomForm; itemNum : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   function get (This : in out ABCustomForm; itemNum : Integer) return ABCustomItem_Access;
   procedure get (This : in out ABCustomForm; itemNum : Integer);
   function getWidth (This : in out ABCustomForm) return Integer;
   procedure paint (This : in out ABCustomForm; graphics_Param : access Graphics_Package.Graphics'Class);
   function getTitle (This : in out ABCustomForm) return Unbounded_String;

end org.allbinary.graphics.form.ABCustomForm_Package;


