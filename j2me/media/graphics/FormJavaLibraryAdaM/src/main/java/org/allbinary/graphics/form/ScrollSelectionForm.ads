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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;

package org.allbinary.graphics.form.ScrollSelectionForm_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package RectangleCollisionUtil_Package renames org.allbinary.math.RectangleCollisionUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ScrollSelectionForm is tagged;
   type ScrollSelectionForm_Access is access all ScrollSelectionForm'Class;
   type ScrollSelectionForm_Access_Array is array (Natural range <>) of ScrollSelectionForm_Access;
   type ScrollSelectionForm_Access_Array_Access is access all ScrollSelectionForm_Access_Array;

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

   procedure Initialize (This : in out ScrollSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; adjustedExtraBorder : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; adjustedExtraBorder : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ScrollSelectionForm_Access;
   function createForm (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return PaintableForm_Access;
   procedure createForm (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function getNullScrollSelectionForm return ScrollSelectionForm_Access;
   procedure getNullScrollSelectionForm;
   function getNullScrollSelectionFormHorizontal return ScrollSelectionForm_Access;
   procedure getNullScrollSelectionFormHorizontal;
   procedure init (This : in out ScrollSelectionForm; rectangle : Rectangle_Access; formType : FormType_Access);
   function paintItemHorizontal (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) return Integer;
   procedure paintItemHorizontal (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer);
   function paintItemVertical (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) return Integer;
   procedure paintItemVertical (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer);
   function paintItemTempHorizontal (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) return Integer;
   procedure paintItemTempHorizontal (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer);
   function getSelectedIndexForPointHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getSelectedIndexForPointHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);
   function getSelectedIndexForPointVerticalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getSelectedIndexForPointVerticalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);
   function getSelectedIndexForPointTempHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getSelectedIndexForPointTempHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);
   function append (This : in out ScrollSelectionForm; item : ABCustomItem_Access) return Integer;
   procedure append (This : in out ScrollSelectionForm; item : ABCustomItem_Access);
   function getSelectedItem (This : in out ScrollSelectionForm; point : GPoint_Access) return ABCustomItem_Access;
   procedure getSelectedItem (This : in out ScrollSelectionForm; point : GPoint_Access);
   function getItemIndex (This : in out ScrollSelectionForm; item : ABCustomItem_Access) return Integer;
   procedure getItemIndex (This : in out ScrollSelectionForm; item : ABCustomItem_Access);
   function getStartIndex (This : in out ScrollSelectionForm) return Integer;
   procedure getStartIndex (This : in out ScrollSelectionForm);
   function getSelectedIndexForPoint (This : in out ScrollSelectionForm; point : GPoint_Access) return Integer;
   procedure getSelectedIndexForPoint (This : in out ScrollSelectionForm; point : GPoint_Access);
   function processInputKey (This : in out ScrollSelectionForm; gameKeyCode : Integer) return Integer;
   procedure processInputKey (This : in out ScrollSelectionForm; gameKeyCode : Integer);
   function isInForm (This : in out ScrollSelectionForm; point : GPoint_Access) return Boolean;
   procedure isInForm (This : in out ScrollSelectionForm; point : GPoint_Access);
   function paintItem (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) return Integer;
   procedure paintItem (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer);
   function paintUnselectedItem (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) return Integer;
   procedure paintUnselectedItem (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer);
   function getDiffX (This : in out ScrollSelectionForm; item : ABCustomItem_Access) return Integer;
   procedure getDiffX (This : in out ScrollSelectionForm; item : ABCustomItem_Access);
   function getDx (This : in out ScrollSelectionForm) return Integer;
   procedure getDx (This : in out ScrollSelectionForm);
   function getDy (This : in out ScrollSelectionForm) return Integer;
   procedure getDy (This : in out ScrollSelectionForm);
   procedure setButtonBasicColor (This : in out ScrollSelectionForm; buttonBasicColor : BasicColor_Access);
   function getButtonBasicColor (This : in out ScrollSelectionForm) return BasicColor_Access;
   procedure getButtonBasicColor (This : in out ScrollSelectionForm);

end org.allbinary.graphics.form.ScrollSelectionForm_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;

package org.allbinary.graphics.form.ScrollSelectionFormHorizontalPaintable_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package RectangleCollisionUtil_Package renames org.allbinary.math.RectangleCollisionUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ScrollSelectionFormHorizontalPaintable is tagged;
   type ScrollSelectionFormHorizontalPaintable_Access is access all ScrollSelectionFormHorizontalPaintable'Class;
   type ScrollSelectionFormHorizontalPaintable_Access_Array is array (Natural range <>) of ScrollSelectionFormHorizontalPaintable_Access;
   type ScrollSelectionFormHorizontalPaintable_Access_Array_Access is access all ScrollSelectionFormHorizontalPaintable_Access_Array;

   type ScrollSelectionFormHorizontalPaintable is new ItemIndexPaintable with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormHorizontalPaintable'Class; scrollSelectionForm : ScrollSelectionForm_Access);
   function Create (scrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormHorizontalPaintable_Access;
   function paint (This : in out ScrollSelectionFormHorizontalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure paint (This : in out ScrollSelectionFormHorizontalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormHorizontalPaintable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;

package org.allbinary.graphics.form.ScrollSelectionFormVerticalPaintable_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package RectangleCollisionUtil_Package renames org.allbinary.math.RectangleCollisionUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ScrollSelectionFormVerticalPaintable is tagged;
   type ScrollSelectionFormVerticalPaintable_Access is access all ScrollSelectionFormVerticalPaintable'Class;
   type ScrollSelectionFormVerticalPaintable_Access_Array is array (Natural range <>) of ScrollSelectionFormVerticalPaintable_Access;
   type ScrollSelectionFormVerticalPaintable_Access_Array_Access is access all ScrollSelectionFormVerticalPaintable_Access_Array;

   type ScrollSelectionFormVerticalPaintable is new ItemIndexPaintable with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormVerticalPaintable'Class; scrollSelectionForm : ScrollSelectionForm_Access);
   function Create (scrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormVerticalPaintable_Access;
   function paint (This : in out ScrollSelectionFormVerticalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure paint (This : in out ScrollSelectionFormVerticalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormVerticalPaintable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;

package org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalPaintable_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package RectangleCollisionUtil_Package renames org.allbinary.math.RectangleCollisionUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ScrollSelectionFormTempHorizontalPaintable is tagged;
   type ScrollSelectionFormTempHorizontalPaintable_Access is access all ScrollSelectionFormTempHorizontalPaintable'Class;
   type ScrollSelectionFormTempHorizontalPaintable_Access_Array is array (Natural range <>) of ScrollSelectionFormTempHorizontalPaintable_Access;
   type ScrollSelectionFormTempHorizontalPaintable_Access_Array_Access is access all ScrollSelectionFormTempHorizontalPaintable_Access_Array;

   type ScrollSelectionFormTempHorizontalPaintable is new ItemIndexPaintable with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormTempHorizontalPaintable'Class; scrollSelectionForm : ScrollSelectionForm_Access);
   function Create (scrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormTempHorizontalPaintable_Access;
   function paint (This : in out ScrollSelectionFormTempHorizontalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure paint (This : in out ScrollSelectionFormTempHorizontalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalPaintable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;

package org.allbinary.graphics.form.ScrollSelectionFormHorizontalDx_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package RectangleCollisionUtil_Package renames org.allbinary.math.RectangleCollisionUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ScrollSelectionFormHorizontalDx is tagged;
   type ScrollSelectionFormHorizontalDx_Access is access all ScrollSelectionFormHorizontalDx'Class;
   type ScrollSelectionFormHorizontalDx_Access_Array is array (Natural range <>) of ScrollSelectionFormHorizontalDx_Access;
   type ScrollSelectionFormHorizontalDx_Access_Array_Access is access all ScrollSelectionFormHorizontalDx_Access_Array;

   type ScrollSelectionFormHorizontalDx is new ItemIndexDx with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormHorizontalDx'Class; multipleScrollSelectionForm : ScrollSelectionForm_Access);
   function Create (multipleScrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormHorizontalDx_Access;
   function getDx (This : in out ScrollSelectionFormHorizontalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out ScrollSelectionFormHorizontalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormHorizontalDx_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;

package org.allbinary.graphics.form.ScrollSelectionFormVericalDx_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package RectangleCollisionUtil_Package renames org.allbinary.math.RectangleCollisionUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ScrollSelectionFormVericalDx is tagged;
   type ScrollSelectionFormVericalDx_Access is access all ScrollSelectionFormVericalDx'Class;
   type ScrollSelectionFormVericalDx_Access_Array is array (Natural range <>) of ScrollSelectionFormVericalDx_Access;
   type ScrollSelectionFormVericalDx_Access_Array_Access is access all ScrollSelectionFormVericalDx_Access_Array;

   type ScrollSelectionFormVericalDx is new ItemIndexDx with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormVericalDx'Class; multipleScrollSelectionForm : ScrollSelectionForm_Access);
   function Create (multipleScrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormVericalDx_Access;
   function getDx (This : in out ScrollSelectionFormVericalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out ScrollSelectionFormVericalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormVericalDx_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;

package org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalDx_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package RectangleCollisionUtil_Package renames org.allbinary.math.RectangleCollisionUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ScrollSelectionFormTempHorizontalDx is tagged;
   type ScrollSelectionFormTempHorizontalDx_Access is access all ScrollSelectionFormTempHorizontalDx'Class;
   type ScrollSelectionFormTempHorizontalDx_Access_Array is array (Natural range <>) of ScrollSelectionFormTempHorizontalDx_Access;
   type ScrollSelectionFormTempHorizontalDx_Access_Array_Access is access all ScrollSelectionFormTempHorizontalDx_Access_Array;

   type ScrollSelectionFormTempHorizontalDx is new ItemIndexDx with record
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out ScrollSelectionFormTempHorizontalDx'Class; multipleScrollSelectionForm : ScrollSelectionForm_Access);
   function Create (multipleScrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormTempHorizontalDx_Access;
   function getDx (This : in out ScrollSelectionFormTempHorizontalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out ScrollSelectionFormTempHorizontalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalDx_Package;


