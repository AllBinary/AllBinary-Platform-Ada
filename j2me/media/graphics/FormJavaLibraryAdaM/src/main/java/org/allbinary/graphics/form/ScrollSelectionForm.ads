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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.ItemIndexPaintable_Package; use org.allbinary.graphics.form.ItemIndexPaintable_Package;
with org.allbinary.graphics.form.ItemIndexDx_Package; use org.allbinary.graphics.form.ItemIndexDx_Package;
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;

package org.allbinary.graphics.form.ScrollSelectionForm_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;

   type ScrollSelectionForm is tagged;
   type ScrollSelectionForm_Access is access all ScrollSelectionForm'Class;
   type ScrollSelectionForm_Access_Array is array (Natural range <>) of ScrollSelectionForm_Access;
   type ScrollSelectionForm_Access_Array_Access is access all ScrollSelectionForm_Access_Array;
   type ScrollSelectionForm_Access_Array_Access_Array is array (Natural range <>) of ScrollSelectionForm_Access_Array_Access;
   type ScrollSelectionForm_Access_Array_Access_Array_Access is access all ScrollSelectionForm_Access_Array_Access_Array;

   type ScrollSelectionForm is new PaintableForm with record
      rectangleCollisionUtil : RectangleCollisionUtil_Access;
      border : Integer;
      halfBorder : Integer;
      buttonBasicColor : BasicColor_Access;
      scrollSelectionFormFormTypeItemIndexPaintable : ItemIndexPaintable_Access;
      formTypeItemIndexDx : ItemIndexDx_Access;
      paintable : ItemPaintable_Access;
      adjustedExtraBorder : Integer;
   end record;
   NULL_SCROLL_SELECTION_FORM : Java_Object_Access;
   NULL_SCROLL_SELECTION_HORIZONTAL_FORM : Java_Object_Access;
   INSIDE_FORM : Unbounded_String;
   IS_IN_FORM : Unbounded_String;
   GET_SELECTED_INDEX : Unbounded_String;

   procedure Initialize (This : in out ScrollSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory_Package.ItemPaintableFactory'Class; border : Integer; adjustedExtraBorder : Integer; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory_Package.ItemPaintableFactory'Class; border : Integer; adjustedExtraBorder : Integer; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ScrollSelectionForm_Access;
   function createForm (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory_Package.ItemPaintableFactory'Class; border : Integer; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return PaintableForm_Access;
   procedure createForm (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory_Package.ItemPaintableFactory'Class; border : Integer; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getNullScrollSelectionForm return ScrollSelectionForm_Access;
   function getNullScrollSelectionFormHorizontal return ScrollSelectionForm_Access;
   procedure init (This : in out ScrollSelectionForm; rectangle_Param : access Rectangle_Package.Rectangle'Class; formType_Param : access FormType_Package.FormType'Class);
   function paintItemHorizontal (This : in out ScrollSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) return Integer;
   procedure paintItemHorizontal (This : in out ScrollSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer);
   function paintItemVertical (This : in out ScrollSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) return Integer;
   procedure paintItemVertical (This : in out ScrollSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer);
   function paintItemTempHorizontal (This : in out ScrollSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) return Integer;
   procedure paintItemTempHorizontal (This : in out ScrollSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer);
   function getSelectedIndexForPointHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure getSelectedIndexForPointHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);
   function getSelectedIndexForPointVerticalDx (This : in out ScrollSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure getSelectedIndexForPointVerticalDx (This : in out ScrollSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);
   function getSelectedIndexForPointTempHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure getSelectedIndexForPointTempHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);
   function append (This : in out ScrollSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class) return Integer;
   procedure append (This : in out ScrollSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   function getSelectedItem (This : in out ScrollSelectionForm; point_Param : access GPoint_Package.GPoint'Class) return ABCustomItem_Access;
   procedure getSelectedItem (This : in out ScrollSelectionForm; point_Param : access GPoint_Package.GPoint'Class);
   function getItemIndex (This : in out ScrollSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class) return Integer;
   procedure getItemIndex (This : in out ScrollSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   function getStartIndex (This : in out ScrollSelectionForm) return Integer;
   function getSelectedIndexForPoint (This : in out ScrollSelectionForm; point_Param : access GPoint_Package.GPoint'Class) return Integer;
   procedure getSelectedIndexForPoint (This : in out ScrollSelectionForm; point_Param : access GPoint_Package.GPoint'Class);
   function processInputKey (This : in out ScrollSelectionForm; gameKeyCode : Integer) return Integer;
   procedure processInputKey (This : in out ScrollSelectionForm; gameKeyCode : Integer);
   function isInForm (This : in out ScrollSelectionForm; point_Param : access GPoint_Package.GPoint'Class) return Boolean;
   procedure isInForm (This : in out ScrollSelectionForm; point_Param : access GPoint_Package.GPoint'Class);
   function paintItem (This : in out ScrollSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) return Integer;
   procedure paintItem (This : in out ScrollSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer);
   function paintUnselectedItem (This : in out ScrollSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) return Integer;
   procedure paintUnselectedItem (This : in out ScrollSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer);
   function getDiffX (This : in out ScrollSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class) return Integer;
   procedure getDiffX (This : in out ScrollSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   function getDx (This : in out ScrollSelectionForm) return Integer;
   function getDy (This : in out ScrollSelectionForm) return Integer;
   procedure setButtonBasicColor (This : in out ScrollSelectionForm; buttonBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getButtonBasicColor (This : in out ScrollSelectionForm) return BasicColor_Access;

end org.allbinary.graphics.form.ScrollSelectionForm_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.ItemIndexPaintable_Package; use org.allbinary.graphics.form.ItemIndexPaintable_Package;
with org.allbinary.graphics.form.ItemIndexDx_Package; use org.allbinary.graphics.form.ItemIndexDx_Package;
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;

package org.allbinary.graphics.form.ScrollSelectionFormHorizontalPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;

   type ScrollSelectionFormHorizontalPaintable is tagged;
   type ScrollSelectionFormHorizontalPaintable_Access is access all ScrollSelectionFormHorizontalPaintable'Class;
   type ScrollSelectionFormHorizontalPaintable_Access_Array is array (Natural range <>) of ScrollSelectionFormHorizontalPaintable_Access;
   type ScrollSelectionFormHorizontalPaintable_Access_Array_Access is access all ScrollSelectionFormHorizontalPaintable_Access_Array;
   type ScrollSelectionFormHorizontalPaintable_Access_Array_Access_Array is array (Natural range <>) of ScrollSelectionFormHorizontalPaintable_Access_Array_Access;
   type ScrollSelectionFormHorizontalPaintable_Access_Array_Access_Array_Access is access all ScrollSelectionFormHorizontalPaintable_Access_Array_Access_Array;

   type ScrollSelectionFormHorizontalPaintable is new ItemIndexPaintable with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormHorizontalPaintable'Class; scrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class);
   function Create (scrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return ScrollSelectionFormHorizontalPaintable_Access;
   function paint (This : in out ScrollSelectionFormHorizontalPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure paint (This : in out ScrollSelectionFormHorizontalPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormHorizontalPaintable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.ItemIndexPaintable_Package; use org.allbinary.graphics.form.ItemIndexPaintable_Package;
with org.allbinary.graphics.form.ItemIndexDx_Package; use org.allbinary.graphics.form.ItemIndexDx_Package;
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;

package org.allbinary.graphics.form.ScrollSelectionFormVerticalPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;

   type ScrollSelectionFormVerticalPaintable is tagged;
   type ScrollSelectionFormVerticalPaintable_Access is access all ScrollSelectionFormVerticalPaintable'Class;
   type ScrollSelectionFormVerticalPaintable_Access_Array is array (Natural range <>) of ScrollSelectionFormVerticalPaintable_Access;
   type ScrollSelectionFormVerticalPaintable_Access_Array_Access is access all ScrollSelectionFormVerticalPaintable_Access_Array;
   type ScrollSelectionFormVerticalPaintable_Access_Array_Access_Array is array (Natural range <>) of ScrollSelectionFormVerticalPaintable_Access_Array_Access;
   type ScrollSelectionFormVerticalPaintable_Access_Array_Access_Array_Access is access all ScrollSelectionFormVerticalPaintable_Access_Array_Access_Array;

   type ScrollSelectionFormVerticalPaintable is new ItemIndexPaintable with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormVerticalPaintable'Class; scrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class);
   function Create (scrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return ScrollSelectionFormVerticalPaintable_Access;
   function paint (This : in out ScrollSelectionFormVerticalPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure paint (This : in out ScrollSelectionFormVerticalPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormVerticalPaintable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.ItemIndexPaintable_Package; use org.allbinary.graphics.form.ItemIndexPaintable_Package;
with org.allbinary.graphics.form.ItemIndexDx_Package; use org.allbinary.graphics.form.ItemIndexDx_Package;
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;

package org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;

   type ScrollSelectionFormTempHorizontalPaintable is tagged;
   type ScrollSelectionFormTempHorizontalPaintable_Access is access all ScrollSelectionFormTempHorizontalPaintable'Class;
   type ScrollSelectionFormTempHorizontalPaintable_Access_Array is array (Natural range <>) of ScrollSelectionFormTempHorizontalPaintable_Access;
   type ScrollSelectionFormTempHorizontalPaintable_Access_Array_Access is access all ScrollSelectionFormTempHorizontalPaintable_Access_Array;
   type ScrollSelectionFormTempHorizontalPaintable_Access_Array_Access_Array is array (Natural range <>) of ScrollSelectionFormTempHorizontalPaintable_Access_Array_Access;
   type ScrollSelectionFormTempHorizontalPaintable_Access_Array_Access_Array_Access is access all ScrollSelectionFormTempHorizontalPaintable_Access_Array_Access_Array;

   type ScrollSelectionFormTempHorizontalPaintable is new ItemIndexPaintable with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormTempHorizontalPaintable'Class; scrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class);
   function Create (scrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return ScrollSelectionFormTempHorizontalPaintable_Access;
   function paint (This : in out ScrollSelectionFormTempHorizontalPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure paint (This : in out ScrollSelectionFormTempHorizontalPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalPaintable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.ItemIndexPaintable_Package; use org.allbinary.graphics.form.ItemIndexPaintable_Package;
with org.allbinary.graphics.form.ItemIndexDx_Package; use org.allbinary.graphics.form.ItemIndexDx_Package;
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;

package org.allbinary.graphics.form.ScrollSelectionFormHorizontalDx_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;

   type ScrollSelectionFormHorizontalDx is tagged;
   type ScrollSelectionFormHorizontalDx_Access is access all ScrollSelectionFormHorizontalDx'Class;
   type ScrollSelectionFormHorizontalDx_Access_Array is array (Natural range <>) of ScrollSelectionFormHorizontalDx_Access;
   type ScrollSelectionFormHorizontalDx_Access_Array_Access is access all ScrollSelectionFormHorizontalDx_Access_Array;
   type ScrollSelectionFormHorizontalDx_Access_Array_Access_Array is array (Natural range <>) of ScrollSelectionFormHorizontalDx_Access_Array_Access;
   type ScrollSelectionFormHorizontalDx_Access_Array_Access_Array_Access is access all ScrollSelectionFormHorizontalDx_Access_Array_Access_Array;

   type ScrollSelectionFormHorizontalDx is new ItemIndexDx with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormHorizontalDx'Class; multipleScrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class);
   function Create (multipleScrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return ScrollSelectionFormHorizontalDx_Access;
   function getDx (This : in out ScrollSelectionFormHorizontalDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out ScrollSelectionFormHorizontalDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormHorizontalDx_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.ItemIndexPaintable_Package; use org.allbinary.graphics.form.ItemIndexPaintable_Package;
with org.allbinary.graphics.form.ItemIndexDx_Package; use org.allbinary.graphics.form.ItemIndexDx_Package;
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;

package org.allbinary.graphics.form.ScrollSelectionFormVericalDx_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;

   type ScrollSelectionFormVericalDx is tagged;
   type ScrollSelectionFormVericalDx_Access is access all ScrollSelectionFormVericalDx'Class;
   type ScrollSelectionFormVericalDx_Access_Array is array (Natural range <>) of ScrollSelectionFormVericalDx_Access;
   type ScrollSelectionFormVericalDx_Access_Array_Access is access all ScrollSelectionFormVericalDx_Access_Array;
   type ScrollSelectionFormVericalDx_Access_Array_Access_Array is array (Natural range <>) of ScrollSelectionFormVericalDx_Access_Array_Access;
   type ScrollSelectionFormVericalDx_Access_Array_Access_Array_Access is access all ScrollSelectionFormVericalDx_Access_Array_Access_Array;

   type ScrollSelectionFormVericalDx is new ItemIndexDx with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormVericalDx'Class; multipleScrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class);
   function Create (multipleScrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return ScrollSelectionFormVericalDx_Access;
   function getDx (This : in out ScrollSelectionFormVericalDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out ScrollSelectionFormVericalDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormVericalDx_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.ItemIndexPaintable_Package; use org.allbinary.graphics.form.ItemIndexPaintable_Package;
with org.allbinary.graphics.form.ItemIndexDx_Package; use org.allbinary.graphics.form.ItemIndexDx_Package;
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;

package org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalDx_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;

   type ScrollSelectionFormTempHorizontalDx is tagged;
   type ScrollSelectionFormTempHorizontalDx_Access is access all ScrollSelectionFormTempHorizontalDx'Class;
   type ScrollSelectionFormTempHorizontalDx_Access_Array is array (Natural range <>) of ScrollSelectionFormTempHorizontalDx_Access;
   type ScrollSelectionFormTempHorizontalDx_Access_Array_Access is access all ScrollSelectionFormTempHorizontalDx_Access_Array;
   type ScrollSelectionFormTempHorizontalDx_Access_Array_Access_Array is array (Natural range <>) of ScrollSelectionFormTempHorizontalDx_Access_Array_Access;
   type ScrollSelectionFormTempHorizontalDx_Access_Array_Access_Array_Access is access all ScrollSelectionFormTempHorizontalDx_Access_Array_Access_Array;

   type ScrollSelectionFormTempHorizontalDx is new ItemIndexDx with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormTempHorizontalDx'Class; multipleScrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class);
   function Create (multipleScrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return ScrollSelectionFormTempHorizontalDx_Access;
   function getDx (This : in out ScrollSelectionFormTempHorizontalDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out ScrollSelectionFormTempHorizontalDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalDx_Package;


