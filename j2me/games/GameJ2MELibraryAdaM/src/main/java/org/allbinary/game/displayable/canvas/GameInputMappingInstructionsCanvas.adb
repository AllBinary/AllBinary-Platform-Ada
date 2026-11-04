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


with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.game.paint.ColorFillBasePaintable_Package; use org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package_References;
with org.allbinary.game.paint.ColorFillPaintableFactory_Package; use org.allbinary.game.paint.ColorFillPaintableFactory_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.draw.DrawStringUtil_Package; use org.allbinary.graphics.draw.DrawStringUtil_Package;
with org.allbinary.graphics.draw.DrawStringUtil_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package is

   package ColorFillPaintableFactory_Package renames Standard.org.allbinary.game.paint.ColorFillPaintableFactory_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   function "=" (Left, Right : Command_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   function "=" (Left, Right : Command_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   function "=" (Left, Right : Command_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   function "=" (Left, Right : CommandListener_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype ColorFillBasePaintable_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype DrawStringUtil_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access;
   function "=" (Left, Right : DrawStringUtil_Access) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array;
   function "=" (Left, Right : DrawStringUtil_Access_Array) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access;
   function "=" (Left, Right : DrawStringUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array_Access_Array is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DrawStringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DrawStringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   procedure Initialize_Fields (This : in out GameInputMappingInstructionsCanvas'Class) is
   begin
      null;
      This.drawStringUtil := DrawStringUtil_Package.getInstance;
      This.TITLE := To_Unbounded_String ("Input Instructions");
      This.instructions := new Unbounded_String_Array'(To_Unbounded_String ("Add Input Mapping:"), To_Unbounded_String ("1. Select the desired action by generating a currently defined input for a given action."), To_Unbounded_String ("(Example: Press the '1' key to select the Fire action)"), To_Unbounded_String ("2. Make the newly desired input for the selected action."), To_Unbounded_String ("(Example: Press 'f' to add it to the selected action)"), To_Unbounded_String ("Note: If the input is already mapped to another action then it will not be added. You"), To_Unbounded_String ("will need to deleted from the other action before adding it to another."), To_Unbounded_String ("Warning: Not all keys map for a given platform and show as Unknown."), StringUtil_Package.getInstance.EMPTY_STRING, To_Unbounded_String ("Remove Input Mapping:"), To_Unbounded_String ("1. Select the desired action by generating a currently defined input for a given action."), To_Unbounded_String ("(Example: Press the key '1' to select the Fire action)"), To_Unbounded_String ("2. Select a mapped input for the selected action."), To_Unbounded_String ("(Example: Press the key '1' to select the '1' key input for the selected Fire action)"), To_Unbounded_String ("3. Press the Delete Key."));
      
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out GameInputMappingInstructionsCanvas'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        GameCommandCanvas_Package.Initialize (This, commandListener, GameInputMappingInstructionsCanvas_Package.NAME, allBinaryGameLayerManager.getBackgroundBasicColor, allBinaryGameLayerManager.getForegroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, GameInputMappingInstructionsCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.colorFillPaintable := ColorFillPaintableFactory_Package.getInstance.getInstance (allBinaryGameLayerManager.getBackgroundBasicColor, False);
   end Initialize;

   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) return GameInputMappingInstructionsCanvas_Access is
      This : constant GameInputMappingInstructionsCanvas_Access := new GameInputMappingInstructionsCanvas;
   begin
      GameInputMappingInstructionsCanvas_Package.Initialize (This.all, commandListener_Param, allBinaryGameLayerManager_Param);
      return This;
   end Create;

   procedure initCommands (This : in out GameInputMappingInstructionsCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        GameInputMappingInstructionsCanvas'Class (This).removeAllCommands;
        GameInputMappingInstructionsCanvas'Class (This).addCommand (GameInputMappingInstructionsCanvas_Package.CLOSE);
        GameInputMappingInstructionsCanvas'Class (This).setCommandListener (cmdListener);
   end initCommands;

   procedure paint (This : in out GameInputMappingInstructionsCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      halfWidth : Integer;
      beginWidth : Integer;
   begin
        This.myFontProcessor.process (graphics);
        This.colorFillPaintable.paint (graphics);
        halfWidth := This.displayInfo.getLastHalfWidth;
        beginWidth := (Java_Shift_Right_Arithmetic (graphics.getFont.stringWidth (This.TITLE), 1));
        graphics.setColor (This.foregroundColor);
        graphics.drawString (This.TITLE, (halfWidth) - (beginWidth), This.fontHeight, This.anchor);
        This.drawStringUtil.drawCenterStrings (graphics, This.instructions, This.displayInfo.getLastWidth, This.fontHeight, halfWidth, (3) * (This.fontHeight));
        GameCommandCanvas_Package.GameCommandCanvas (This).paint (graphics);
   end paint;

begin
   null;
   DISPLAY := Command_Package.Create (To_Unbounded_String ("Help"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   CLOSE := Command_Package.Create (To_Unbounded_String ("Close"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   NAME := To_Unbounded_String ("GameInputMappingInstructionsCanvas");

end org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;


