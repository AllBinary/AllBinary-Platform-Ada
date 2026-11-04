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

limited with org.allbinary.graphics.form.CommandCurrentSelectionForm_Package;
package org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References is
   type CommandCurrentSelectionForm_Access is access all org.allbinary.graphics.form.CommandCurrentSelectionForm_Package.CommandCurrentSelectionForm'Class;
   type CommandCurrentSelectionForm_Access_Array is array (Natural range <>) of CommandCurrentSelectionForm_Access;
   type CommandCurrentSelectionForm_Access_Array_Access is access all CommandCurrentSelectionForm_Access_Array;
   type CommandCurrentSelectionForm_Access_Array_Access_Array is array (Natural range <>) of CommandCurrentSelectionForm_Access_Array_Access;
   type CommandCurrentSelectionForm_Access_Array_Access_Array_Access is access all CommandCurrentSelectionForm_Access_Array_Access_Array;
end org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References;

with org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package; use org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;

package org.allbinary.graphics.form.CommandCurrentSelectionForm_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package Reference_Types is
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   use type Command_Access;
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   use type Command_Access_Array;
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   use type Command_Access_Array_Access;
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   use type Command_Access_Array_Access_Array;
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   use type Command_Access_Array_Access_Array_Access;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CommandCurrentSelectionForm_Access is org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References.CommandCurrentSelectionForm_Access;
   function "=" (Left, Right : CommandCurrentSelectionForm_Access) return Boolean renames org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References."=";
   subtype CommandCurrentSelectionForm_Access_Array is org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References.CommandCurrentSelectionForm_Access_Array;
   function "=" (Left, Right : CommandCurrentSelectionForm_Access_Array) return Boolean renames org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References."=";
   subtype CommandCurrentSelectionForm_Access_Array_Access is org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References.CommandCurrentSelectionForm_Access_Array_Access;
   function "=" (Left, Right : CommandCurrentSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References."=";
   subtype CommandCurrentSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References.CommandCurrentSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : CommandCurrentSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References."=";
   subtype CommandCurrentSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References.CommandCurrentSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandCurrentSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.CommandCurrentSelectionForm_Package_References."=";

   type CommandCurrentSelectionForm is new ScrollCurrentSelectionForm and UpdateMyFontInterface with record
      selectedAnimationArray : Animation_Access_Array_Access;
      unSelectedAnimationArray : Animation_Access_Array_Access;
   end record;

   procedure Initialize (This : in out CommandCurrentSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CommandCurrentSelectionForm_Access;
   procedure updateMeasurement (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure initAnimations (This : in out CommandCurrentSelectionForm);
   procedure addAll (This : in out CommandCurrentSelectionForm; items : ABCustomItem_Access_Array_Access);
   procedure addAt (This : in out CommandCurrentSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   procedure updateAll (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; items : ABCustomItem_Access_Array_Access);
   procedure updateAt (This : in out CommandCurrentSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   function getSelectedCommand (This : in out CommandCurrentSelectionForm) return Command_Access;
   function append (This : in out CommandCurrentSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class) return Integer;
   procedure append (This : in out CommandCurrentSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   procedure delete (This : in out CommandCurrentSelectionForm; itemNum : Integer);
   procedure deleteAll (This : in out CommandCurrentSelectionForm);
   procedure insert (This : in out CommandCurrentSelectionForm; itemNum : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   procedure set (This : in out CommandCurrentSelectionForm; itemNum : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   procedure paint (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class);
   function paintItem (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) return Integer;
   procedure paintItem (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer);
   function paintUnselectedItem (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) return Integer;
   procedure paintUnselectedItem (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer);

end org.allbinary.graphics.form.CommandCurrentSelectionForm_Package;


