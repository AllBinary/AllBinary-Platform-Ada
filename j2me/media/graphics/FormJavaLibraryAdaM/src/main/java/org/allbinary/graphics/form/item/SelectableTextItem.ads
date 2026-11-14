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
limited with org.allbinary.graphics.form.item.SelectableTextItem_Package;
package org.allbinary.graphics.form.item.SelectableTextItem_Package_References is
   type SelectableTextItem_Access is access all org.allbinary.graphics.form.item.SelectableTextItem_Package.SelectableTextItem'Class;
   type SelectableTextItem_Access_Array is array (Natural range <>) of SelectableTextItem_Access;
   type SelectableTextItem_Access_Array_Access is access all SelectableTextItem_Access_Array;
   type SelectableTextItem_Access_Array_Access_Array is array (Natural range <>) of SelectableTextItem_Access_Array_Access;
   type SelectableTextItem_Access_Array_Access_Array_Access is access all SelectableTextItem_Access_Array_Access_Array;
   type SelectableTextItem_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectableTextItem_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectableTextItem_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectableTextItem_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectableTextItem_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectableTextItem_Access_Array_Access is (if Value /= null and then Value.all in SelectableTextItem_Access_Array_Object'Class then SelectableTextItem_Access_Array_Object'Class (Value.all).Value else null);
   type SelectableTextItem_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectableTextItem_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectableTextItem_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectableTextItem_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectableTextItem_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectableTextItem_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SelectableTextItem_Access_Array_Access_Array_Object'Class then SelectableTextItem_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.SelectableTextItem_Package_References;

with org.allbinary.graphics.form.item.SelectableTextItem_Package_References;
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
with org.allbinary.graphics.form.item.ABTextItem_Package; use org.allbinary.graphics.form.item.ABTextItem_Package;

package org.allbinary.graphics.form.item.SelectableTextItem_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype SelectableTextItem_Access is org.allbinary.graphics.form.item.SelectableTextItem_Package_References.SelectableTextItem_Access;
   function "=" (Left, Right : SelectableTextItem_Access) return Boolean renames org.allbinary.graphics.form.item.SelectableTextItem_Package_References."=";
   subtype SelectableTextItem_Access_Array is org.allbinary.graphics.form.item.SelectableTextItem_Package_References.SelectableTextItem_Access_Array;
   function "=" (Left, Right : SelectableTextItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.SelectableTextItem_Package_References."=";
   subtype SelectableTextItem_Access_Array_Access is org.allbinary.graphics.form.item.SelectableTextItem_Package_References.SelectableTextItem_Access_Array_Access;
   function "=" (Left, Right : SelectableTextItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.SelectableTextItem_Package_References."=";
   function Java_Box (Value : SelectableTextItem_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.SelectableTextItem_Package_References.Java_Box;
   function Java_Unbox_SelectableTextItem_Access_Array (Value : access Java_Object'Class) return SelectableTextItem_Access_Array_Access renames org.allbinary.graphics.form.item.SelectableTextItem_Package_References.Java_Unbox_SelectableTextItem_Access_Array;
   subtype SelectableTextItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.SelectableTextItem_Package_References.SelectableTextItem_Access_Array_Access_Array;
   function "=" (Left, Right : SelectableTextItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.SelectableTextItem_Package_References."=";
   subtype SelectableTextItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.SelectableTextItem_Package_References.SelectableTextItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectableTextItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.SelectableTextItem_Package_References."=";
   function Java_Box (Value : SelectableTextItem_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.SelectableTextItem_Package_References.Java_Box;
   function Java_Unbox_SelectableTextItem_Access_Array_Access_Array (Value : access Java_Object'Class) return SelectableTextItem_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.SelectableTextItem_Package_References.Java_Unbox_SelectableTextItem_Access_Array_Access_Array;

   type SelectableTextItem is new ABTextItem with null record;

   procedure Initialize (This : in out SelectableTextItem'Class; label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return SelectableTextItem_Access;
   function isFocusable (This : in out SelectableTextItem) return Boolean;
   procedure paintXY (This : in out SelectableTextItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.graphics.form.item.SelectableTextItem_Package;


