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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package; use org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;

package org.allbinary.graphics.form.CommandCurrentSelectionForm_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;

   type CommandCurrentSelectionForm is tagged;
   type CommandCurrentSelectionForm_Access is access all CommandCurrentSelectionForm'Class;
   type CommandCurrentSelectionForm_Access_Array is array (Natural range <>) of CommandCurrentSelectionForm_Access;
   type CommandCurrentSelectionForm_Access_Array_Access is access all CommandCurrentSelectionForm_Access_Array;
   type CommandCurrentSelectionForm_Access_Array_Access_Array is array (Natural range <>) of CommandCurrentSelectionForm_Access_Array_Access;
   type CommandCurrentSelectionForm_Access_Array_Access_Array_Access is access all CommandCurrentSelectionForm_Access_Array_Access_Array;

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


