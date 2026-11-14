--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.item.ABTextFieldItem_Package;
package org.allbinary.graphics.form.item.ABTextFieldItem_Package_References is
   type ABTextFieldItem_Access is access all org.allbinary.graphics.form.item.ABTextFieldItem_Package.ABTextFieldItem'Class;
   type ABTextFieldItem_Access_Array is array (Natural range <>) of ABTextFieldItem_Access;
   type ABTextFieldItem_Access_Array_Access is access all ABTextFieldItem_Access_Array;
   type ABTextFieldItem_Access_Array_Access_Array is array (Natural range <>) of ABTextFieldItem_Access_Array_Access;
   type ABTextFieldItem_Access_Array_Access_Array_Access is access all ABTextFieldItem_Access_Array_Access_Array;
   type ABTextFieldItem_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABTextFieldItem_Access_Array_Access;
   end record;
   function Java_Box (Value : ABTextFieldItem_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABTextFieldItem_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABTextFieldItem_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABTextFieldItem_Access_Array_Access is (if Value /= null and then Value.all in ABTextFieldItem_Access_Array_Object'Class then ABTextFieldItem_Access_Array_Object'Class (Value.all).Value else null);
   type ABTextFieldItem_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABTextFieldItem_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABTextFieldItem_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABTextFieldItem_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABTextFieldItem_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABTextFieldItem_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABTextFieldItem_Access_Array_Access_Array_Object'Class then ABTextFieldItem_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.ABTextFieldItem_Package_References;

with org.allbinary.graphics.form.item.ABTextFieldItem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
limited with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;
with org.allbinary.graphics.form.item.ABTextItem_Package; use org.allbinary.graphics.form.item.ABTextItem_Package;

package org.allbinary.graphics.form.item.ABTextFieldItem_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   use type Font_Access;
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   use type Font_Access_Array;
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   use type Font_Access_Array_Access;
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   use type Font_Access_Array_Access_Array;
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   use type Font_Access_Array_Access_Array_Access;
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
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   use type Visitor_Access;
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   use type Visitor_Access_Array;
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   use type Visitor_Access_Array_Access;
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   use type Visitor_Access_Array_Access_Array;
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   use type Visitor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ABTextFieldItem_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access;
   function "=" (Left, Right : ABTextFieldItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array;
   function "=" (Left, Right : ABTextFieldItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access;
   function "=" (Left, Right : ABTextFieldItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   function Java_Box (Value : ABTextFieldItem_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.Java_Box;
   function Java_Unbox_ABTextFieldItem_Access_Array (Value : access Java_Object'Class) return ABTextFieldItem_Access_Array_Access renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.Java_Unbox_ABTextFieldItem_Access_Array;
   subtype ABTextFieldItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABTextFieldItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABTextFieldItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   function Java_Box (Value : ABTextFieldItem_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.Java_Box;
   function Java_Unbox_ABTextFieldItem_Access_Array_Access_Array (Value : access Java_Object'Class) return ABTextFieldItem_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.Java_Unbox_ABTextFieldItem_Access_Array_Access_Array;

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


