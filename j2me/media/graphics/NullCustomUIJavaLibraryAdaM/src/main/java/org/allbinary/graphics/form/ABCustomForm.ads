--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.ABCustomForm_Package;
package org.allbinary.graphics.form.ABCustomForm_Package_References is
   type ABCustomForm_Access is access all org.allbinary.graphics.form.ABCustomForm_Package.ABCustomForm'Class;
   type ABCustomForm_Access_Array is array (Natural range <>) of ABCustomForm_Access;
   type ABCustomForm_Access_Array_Access is access all ABCustomForm_Access_Array;
   type ABCustomForm_Access_Array_Access_Array is array (Natural range <>) of ABCustomForm_Access_Array_Access;
   type ABCustomForm_Access_Array_Access_Array_Access is access all ABCustomForm_Access_Array_Access_Array;
   type ABCustomForm_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABCustomForm_Access_Array_Access;
   end record;
   function Java_Box (Value : ABCustomForm_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABCustomForm_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABCustomForm_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABCustomForm_Access_Array_Access is (if Value /= null and then Value.all in ABCustomForm_Access_Array_Object'Class then ABCustomForm_Access_Array_Object'Class (Value.all).Value else null);
   type ABCustomForm_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABCustomForm_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABCustomForm_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABCustomForm_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABCustomForm_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABCustomForm_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABCustomForm_Access_Array_Access_Array_Object'Class then ABCustomForm_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.ABCustomForm_Package_References;

with org.allbinary.graphics.form.ABCustomForm_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.graphics.form.CustomScreen_Package; use org.allbinary.graphics.form.CustomScreen_Package;

package org.allbinary.graphics.form.ABCustomForm_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   use type ABCustomItem_Access;
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   use type ABCustomItem_Access_Array;
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access;
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   use type ABCustomItem_Access_Array_Access_Array;
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ABCustomForm_Access is org.allbinary.graphics.form.ABCustomForm_Package_References.ABCustomForm_Access;
   function "=" (Left, Right : ABCustomForm_Access) return Boolean renames org.allbinary.graphics.form.ABCustomForm_Package_References."=";
   subtype ABCustomForm_Access_Array is org.allbinary.graphics.form.ABCustomForm_Package_References.ABCustomForm_Access_Array;
   function "=" (Left, Right : ABCustomForm_Access_Array) return Boolean renames org.allbinary.graphics.form.ABCustomForm_Package_References."=";
   subtype ABCustomForm_Access_Array_Access is org.allbinary.graphics.form.ABCustomForm_Package_References.ABCustomForm_Access_Array_Access;
   function "=" (Left, Right : ABCustomForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ABCustomForm_Package_References."=";
   function Java_Box (Value : ABCustomForm_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.ABCustomForm_Package_References.Java_Box;
   function Java_Unbox_ABCustomForm_Access_Array (Value : access Java_Object'Class) return ABCustomForm_Access_Array_Access renames org.allbinary.graphics.form.ABCustomForm_Package_References.Java_Unbox_ABCustomForm_Access_Array;
   subtype ABCustomForm_Access_Array_Access_Array is org.allbinary.graphics.form.ABCustomForm_Package_References.ABCustomForm_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ABCustomForm_Package_References."=";
   subtype ABCustomForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ABCustomForm_Package_References.ABCustomForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ABCustomForm_Package_References."=";
   function Java_Box (Value : ABCustomForm_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.ABCustomForm_Package_References.Java_Box;
   function Java_Unbox_ABCustomForm_Access_Array_Access_Array (Value : access Java_Object'Class) return ABCustomForm_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.ABCustomForm_Package_References.Java_Unbox_ABCustomForm_Access_Array_Access_Array;

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


