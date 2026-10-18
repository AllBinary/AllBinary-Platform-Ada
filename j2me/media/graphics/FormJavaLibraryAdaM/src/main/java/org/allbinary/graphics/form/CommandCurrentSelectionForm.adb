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


with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.vector.RectangleAdjustedAnimation_Package; use org.allbinary.animation.vector.RectangleAdjustedAnimation_Package;
with org.allbinary.animation.vector.RectangleFilledAdjustedAnimation_Package; use org.allbinary.animation.vector.RectangleFilledAdjustedAnimation_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.CommandTextItem_Package; use org.allbinary.graphics.form.item.CommandTextItem_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;

package body org.allbinary.graphics.form.CommandCurrentSelectionForm_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package RectangleAdjustedAnimation_Package renames Standard.org.allbinary.animation.vector.RectangleAdjustedAnimation_Package;
   package RectangleFilledAdjustedAnimation_Package renames Standard.org.allbinary.animation.vector.RectangleFilledAdjustedAnimation_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package CommandTextItem_Package renames Standard.org.allbinary.graphics.form.item.CommandTextItem_Package;
   procedure Initialize_Fields (This : in out CommandCurrentSelectionForm'Class) is
   begin
      null;
      This.selectedAnimationArray := new Animation_Access_Array'(0 .. (16) - 1 => null);
      This.unSelectedAnimationArray := new Animation_Access_Array'(0 .. (16) - 1 => null);
   end Initialize_Fields;


   procedure Initialize (This : in out CommandCurrentSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ScrollCurrentSelectionForm_Package.Initialize (This, title, items, ItemPaintableFactory_Package.getInstance, border, -(3), moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        CommandCurrentSelectionForm'Class (This).initAnimations;
        CommandCurrentSelectionForm'Class (This).addAll (items);
   end Initialize;

   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CommandCurrentSelectionForm_Access is
      This : constant CommandCurrentSelectionForm_Access := new CommandCurrentSelectionForm;
   begin
      CommandCurrentSelectionForm_Package.Initialize (This.all, title, items, border, moveForSmallScreen, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        CommandCurrentSelectionForm'Class (This).updateAll (graphics, CommandCurrentSelectionForm'Class (This).getAllitems);
        ScrollCurrentSelectionForm (This).updateMeasurement (graphics);
   end updateMeasurement;

   procedure initAnimations (This : in out CommandCurrentSelectionForm) is
      nullAnimation : Animation_Access;
      index : Integer;
   begin
        nullAnimation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
        index := This.selectedAnimationArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.selectedAnimationArray (index) := nullAnimation;
        end loop;
        index := This.unSelectedAnimationArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.unSelectedAnimationArray (index) := nullAnimation;
        end loop;
   end initAnimations;

   procedure addAll (This : in out CommandCurrentSelectionForm; items : ABCustomItem_Access_Array_Access) is
      index : Integer;
   begin
        index := items'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            CommandCurrentSelectionForm'Class (This).addAt (index, items (index));
        end loop;
   end addAll;

   procedure addAt (This : in out CommandCurrentSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class) is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
      basicColorFactory : BasicColorFactory_Access;
      buttonColor : BasicColor_Access;
      selectedButtonColor : BasicColor_Access;
      width : Integer;
      height : Integer;
      adjustedBorder : Integer;
      offset : Integer;
      rectWidth : Integer;
      rectHeight : Integer;
   begin
        basicColorFactory := BasicColorFactory_Package.getInstance;
        buttonColor := basicColorFactory.TRANSPARENT_GREY;
        selectedButtonColor := basicColorFactory.TRANSPARENT_RED;
        width := item.getMinimumWidth;
        height := item.getMinimumHeight;
        adjustedBorder := 3;
        offset := -(((This.halfBorder) + (adjustedBorder)));
        rectWidth := ((width) + (This.border)) - (adjustedBorder);
        rectHeight := ((height) + (This.border)) - (adjustedBorder);
        if (J2MEUtil_Package.isJ2ME) or else (J2MEUtil_Package.isHTML) then
            This.selectedAnimationArray (index) := RectangleAdjustedAnimation_Package.Create (rectWidth, rectHeight, offset, offset, selectedButtonColor);
        else
            This.selectedAnimationArray (index) := RectangleFilledAdjustedAnimation_Package.Create (rectWidth, rectHeight, offset, offset, selectedButtonColor);
        end if;
        adjustedBorder := 4;
        if (J2MEUtil_Package.isJ2ME) or else (J2MEUtil_Package.isHTML) then
            This.unSelectedAnimationArray (index) := RectangleAdjustedAnimation_Package.Create (rectWidth, rectHeight, offset, offset, buttonColor);
        else
            This.unSelectedAnimationArray (index) := RectangleFilledAdjustedAnimation_Package.Create (rectWidth, rectHeight, offset, offset, buttonColor);
        end if;
   end addAt;

   procedure updateAll (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; items : ABCustomItem_Access_Array_Access) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        index := items'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            items (index).preMeasurement (graphics);
            CommandCurrentSelectionForm'Class (This).updateAt (index, items (index));
        end loop;
   end updateAll;

   procedure updateAt (This : in out CommandCurrentSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class) is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
      basicColorFactory : BasicColorFactory_Access;
      buttonColor : BasicColor_Access;
      selectedButtonColor : BasicColor_Access;
      width : Integer;
      height : Integer;
      adjustedBorder : Integer;
      offset : Integer;
      rectWidth : Integer;
      rectHeight : Integer;
      rectangleAdjustedAnimation : RectangleFilledAdjustedAnimation_Access;
   begin
        basicColorFactory := BasicColorFactory_Package.getInstance;
        buttonColor := basicColorFactory.TRANSPARENT_GREY;
        selectedButtonColor := basicColorFactory.TRANSPARENT_RED;
        width := item.getMinimumWidth;
        height := item.getMinimumHeight;
        adjustedBorder := 3;
        offset := -(((This.halfBorder) + (adjustedBorder)));
        rectWidth := ((width) + (This.border)) - (adjustedBorder);
        rectHeight := ((height) + (This.border)) - (adjustedBorder);
        if (J2MEUtil_Package.isJ2ME) or else (J2MEUtil_Package.isHTML) then
            rectangleAdjustedAnimation := RectangleAdjustedAnimation_Access (This.selectedAnimationArray (index));
            rectangleAdjustedAnimation.setWidth (rectWidth);
            rectangleAdjustedAnimation.setHeight (rectHeight);
            rectangleAdjustedAnimation.setOffsetX (offset);
            rectangleAdjustedAnimation.setOffsetY (offset);
            rectangleAdjustedAnimation.setBasicColorP (selectedButtonColor);
        else
            rectangleAdjustedAnimation := RectangleFilledAdjustedAnimation_Access (This.selectedAnimationArray (index));
            rectangleAdjustedAnimation.setWidth (rectWidth);
            rectangleAdjustedAnimation.setHeight (rectHeight);
            rectangleAdjustedAnimation.setOffsetX (offset);
            rectangleAdjustedAnimation.setOffsetY (offset);
            rectangleAdjustedAnimation.setBasicColorP (selectedButtonColor);
        end if;
        adjustedBorder := 4;
        if (J2MEUtil_Package.isJ2ME) or else (J2MEUtil_Package.isHTML) then
            rectangleAdjustedAnimation := RectangleAdjustedAnimation_Access (This.unSelectedAnimationArray (index));
            rectangleAdjustedAnimation.setWidth (rectWidth);
            rectangleAdjustedAnimation.setHeight (rectHeight);
            rectangleAdjustedAnimation.setOffsetX (offset);
            rectangleAdjustedAnimation.setOffsetY (offset);
            rectangleAdjustedAnimation.setBasicColorP (buttonColor);
        else
            rectangleAdjustedAnimation := RectangleFilledAdjustedAnimation_Access (This.unSelectedAnimationArray (index));
            rectangleAdjustedAnimation.setWidth (rectWidth);
            rectangleAdjustedAnimation.setHeight (rectHeight);
            rectangleAdjustedAnimation.setOffsetX (offset);
            rectangleAdjustedAnimation.setOffsetY (offset);
            rectangleAdjustedAnimation.setBasicColorP (buttonColor);
        end if;
   end updateAt;

   function getSelectedCommand (This : in out CommandCurrentSelectionForm) return Command_Access is
      index : Integer;
      commandTextItem : CommandTextItem_Access;
   begin
        index := ScrollCurrentSelectionForm (This).getSelectedIndex;
        commandTextItem := CommandTextItem_Access (CommandCurrentSelectionForm'Class (This).get (index));
        return commandTextItem.getCommand;
   end getSelectedCommand;

   function append (This : in out CommandCurrentSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class) return Integer is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
      result : Integer;
   begin
        result := ScrollCurrentSelectionForm (This).append (item);
        CommandCurrentSelectionForm'Class (This).addAt (result, item);
        return result;
   end append;

   procedure delete (This : in out CommandCurrentSelectionForm; itemNum : Integer) is
   begin
        ScrollCurrentSelectionForm (This).delete (itemNum);
   end delete;

   procedure deleteAll (This : in out CommandCurrentSelectionForm) is
   begin
        CommandCurrentSelectionForm'Class (This).initAnimations;
        ScrollCurrentSelectionForm (This).deleteAll;
   end deleteAll;

   procedure insert (This : in out CommandCurrentSelectionForm; itemNum : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class) is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        ScrollCurrentSelectionForm (This).insert (itemNum, item);
   end insert;

   procedure set (This : in out CommandCurrentSelectionForm; itemNum : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class) is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        ScrollCurrentSelectionForm (This).set (itemNum, item);
   end set;

   procedure paint (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        ScrollCurrentSelectionForm (This).paint (graphics);
   end paint;

   --  throws Exception
   function paintItem (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) return Integer is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        This.selectedAnimationArray (index).paintXY (graphics, x, y);
        return ScrollCurrentSelectionForm (This).paintItem (graphics, index, item, x, y);
   end paintItem;

   --  throws Exception
   function paintUnselectedItem (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) return Integer is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        This.unSelectedAnimationArray (index).paintXY (graphics, x, y);
        return ScrollCurrentSelectionForm (This).paintUnselectedItem (graphics, index, item, x, y);
   end paintUnselectedItem;

   procedure append (This : in out CommandCurrentSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class) is
      Java_Result : constant Integer := CommandCurrentSelectionForm'Class (This).append (item_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end append;

   procedure paintItem (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) is
      Java_Result : constant Integer := CommandCurrentSelectionForm'Class (This).paintItem (graphics_Param, index, item_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paintItem;

   procedure paintUnselectedItem (This : in out CommandCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; x : Integer; y : Integer) is
      Java_Result : constant Integer := CommandCurrentSelectionForm'Class (This).paintUnselectedItem (graphics_Param, index, item_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paintUnselectedItem;

end org.allbinary.graphics.form.CommandCurrentSelectionForm_Package;


