-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;

package body org.allbinary.game.layer.SelectionHudPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package CommonButtons_Package renames Standard.org.allbinary.input.motion.button.CommonButtons_Package;
   package TouchButtonLocationHelper_Package renames Standard.org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
   procedure Initialize_Fields (This : in out SelectionHudPaintable'Class) is
   begin
      null;
      This.y := (CommonButtons_Package.getInstance.STANDARD_BUTTON_SIZE) + (17);
      
      This.updateMyFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (SelectionHudPaintable_Access'(This'Unchecked_Access)));
      This.myFontProcessor := This.updateMyFontProcessor;
      This.x := 0;
      This.textX := 0;
      This.imageX := 0;
      This.basicColor := BasicColorFactory_Package.getInstance.BLACK;
      This.color := 0;
      This.width := 0;
      This.height := 0;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
      This.animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
      This.backgroundColor := BasicColorFactory_Package.getInstance.GREY.intValue;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectionHudPaintable'Class) is
   begin
      InitUpdatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        SelectionHudPaintable'Class (This).update;
        This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen (10000);
   end Initialize;

   function Create return SelectionHudPaintable_Access is
      This : constant SelectionHudPaintable_Access := new SelectionHudPaintable;
   begin
      SelectionHudPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out SelectionHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      commonButtons : CommonButtons_Access;
      font : Font_Access;
   begin
        commonButtons := CommonButtons_Package.getInstance;
        font := graphics.getFont;
        SelectionHudPaintable'Class (This).setHeight ((commonButtons.STANDARD_BUTTON_SIZE) + (font.getHeight));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure update (This : in out SelectionHudPaintable) is
      commonButtons : CommonButtons_Access;
      touchButtonLocationHelper : TouchButtonLocationHelper_Access;
      displayInfoSingleton : DisplayInfoSingleton_Access;
   begin
        commonButtons := CommonButtons_Package.getInstance;
        touchButtonLocationHelper := TouchButtonLocationHelper_Package.Create;
        displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
        This.x := (commonButtons.STANDARD_BUTTON_SIZE) + (touchButtonLocationHelper.getColumnsRemainderHalf);
        This.textX := (SelectionHudPaintable'Class (This).getX) + (4);
        This.width := (displayInfoSingleton.getLastWidth) - ((SelectionHudPaintable'Class (This).getX) * (2));
        This.imageX := ((SelectionHudPaintable'Class (This).getWidth) + (touchButtonLocationHelper.getColumnsRemainderHalf)) - (10);
        This.myFontProcessor := This.updateMyFontProcessor;
   end update;

   procedure updateSelectionInfo (This : in out SelectionHudPaintable) is
   begin
        null;
   end updateSelectionInfo;

   procedure updateInfo (This : in out SelectionHudPaintable) is
   begin
        null;
   end updateInfo;

   function getPrimitiveLongUtil (This : in out SelectionHudPaintable) return PrimitiveLongUtil_Access is
   begin
        return This.primitiveLongUtil;
   end getPrimitiveLongUtil;

   procedure setAnimationInterface (This : in out SelectionHudPaintable; animationInterface_Param : access Animation_Package.Animation'Class) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        This.animationInterface := animationInterface;
   end setAnimationInterface;

   function getAnimationInterface (This : in out SelectionHudPaintable) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

   procedure setName (This : in out SelectionHudPaintable; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getName (This : in out SelectionHudPaintable) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setBasicColorP (This : in out SelectionHudPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.basicColor := basicColor;
        SelectionHudPaintable'Class (This).setColor (basicColor.intValue);
   end setBasicColorP;

   function getBasicColorP (This : in out SelectionHudPaintable) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure setColor (This : in out SelectionHudPaintable; color : Integer) is
   begin
        This.color := color;
   end setColor;

   function getColor (This : in out SelectionHudPaintable) return Integer is
   begin
        return This.color;
   end getColor;

   function getWidth (This : in out SelectionHudPaintable) return Integer is
   begin
        return This.width;
   end getWidth;

   procedure setHeight (This : in out SelectionHudPaintable; height : Integer) is
   begin
        This.height := height;
   end setHeight;

   function getHeight (This : in out SelectionHudPaintable) return Integer is
   begin
        return This.height;
   end getHeight;

   function getX (This : in out SelectionHudPaintable) return Integer is
   begin
        return This.x;
   end getX;

   procedure paint (This : in out SelectionHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        graphics.setColor (This.backgroundColor);
        graphics.drawRect (SelectionHudPaintable'Class (This).getX, This.y, SelectionHudPaintable'Class (This).getWidth, SelectionHudPaintable'Class (This).getHeight);
        graphics.setColor (SelectionHudPaintable'Class (This).getColor);
        graphics.drawString (SelectionHudPaintable'Class (This).getName, This.textX, This.y, 0);
   end paint;

end org.allbinary.game.layer.SelectionHudPaintable_Package;


