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


with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;

package body org.allbinary.game.graphics.hud.BasicHud_1_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   procedure Initialize_Fields (This : in out BasicHud_1'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.canvasStrings := CanvasStrings_Package.getInstance;
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      This.updateMyFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (BasicHud_1_Access'(This'Unchecked_Access)));
      This.myFontProcessor := This.updateMyFontProcessor;
      This.location := 0;
      This.direction := 0;
      This.bufferZone := 0;
      This.hudGraphicsPosition := HudGraphicsPosition_Package.NULL_HUD_GRAPHICS_POSITION;
      This.x := 0;
      This.y := 0;
      This.basicColor := BasicColorFactory_Package.getInstance.BLACK;
      
      This.updateMaxWidth := 0;
      This.updateMaxHeight := 0;
      This.offsetY := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicHud_1'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      Initialize_Fields (This);
        BasicHud_1'Class (This).setLocation (location);
        BasicHud_1'Class (This).setDirection (direction);
        BasicHud_1'Class (This).setBufferZone (bufferZone);
        BasicHud_1'Class (This).onDisplayChangeEvent (DisplayInfoSingleton_Package.getInstance.displayChangeEvent);
        BasicHud_1'Class (This).setBasicColorP (basicColor);
        This.color := basicColor.intValue;
   end Initialize;

   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return BasicHud_1_Access is
      This : constant BasicHud_1_Access := new BasicHud_1;
   begin
      BasicHud_1_Package.Initialize (This.all, location, direction, bufferZone, basicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.hudGraphicsPosition := BasicHud_1'Class (This).getHudGraphicsPositionWH (This.displayInfo.getLastWidth, This.displayInfo.getLastHeight, This.updateMaxWidth, This.updateMaxHeight);
            This.x := This.hudGraphicsPosition.getPoint.getX;
            BasicHud_1'Class (This).setY (This.hudGraphicsPosition.getPoint.getY);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, BasicHud_1_Access'(This'Unchecked_Access), This.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
                end;
        end;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   function getLocation (This : in out BasicHud_1) return Integer is
   begin
        return This.location;
   end getLocation;

   function getDirection (This : in out BasicHud_1) return Integer is
   begin
        return This.direction;
   end getDirection;

   --  throws Exception
   function getHudGraphicsPositionWH (This : in out BasicHud_1; width : Integer; height : Integer; maxWidth : Integer; maxHeight : Integer) return HudGraphicsPosition_Access is
      x : Integer;
      y : Integer;
      anchor : Integer;
      basicHudFactory : BasicHudFactory_Access;
   begin
        x := 0;
        y := 0;
        anchor := 0;
        basicHudFactory := BasicHudFactory_Package.getInstance;
        if (basicHudFactory.BOTTOMLEFT) = (BasicHud_1'Class (This).getLocation) then
            x := (This.bufferZone) + (2);
            y := ((height) - (maxHeight)) - (This.bufferZone);
            anchor := Java_And (Graphics_Package.BOTTOM, Graphics_Package.LEFT);
        elsif (basicHudFactory.BOTTOMRIGHT) = (BasicHud_1'Class (This).getLocation) then
            x := (width) - (maxWidth);
            y := ((height) - (maxHeight)) - (This.bufferZone);
            anchor := Java_And (Graphics_Package.BOTTOM, Graphics_Package.RIGHT);
        elsif (basicHudFactory.TOPLEFT) = (BasicHud_1'Class (This).getLocation) then
            x := (This.bufferZone) + (2);
            y := (This.bufferZone) + (5);
            anchor := Anchor_Package.TOP_LEFT;
        elsif (basicHudFactory.TOPRIGHT) = (BasicHud_1'Class (This).getLocation) then
            x := (width) - (maxWidth);
            y := (This.bufferZone) + (5);
            anchor := Java_And (Graphics_Package.TOP, Graphics_Package.RIGHT);
        elsif (basicHudFactory.TOPCENTER) = (BasicHud_1'Class (This).getLocation) then
            x := ((((width) - (maxWidth))) / (2));
            y := (This.bufferZone) + (5);
            anchor := Java_And (Graphics_Package.TOP, Graphics_Package.HCENTER);
        elsif (basicHudFactory.BOTTOMCENTER) = (BasicHud_1'Class (This).getLocation) then
            x := ((((width) - (maxWidth))) / (2));
            y := ((height) - (maxHeight)) - (This.bufferZone);
            anchor := Java_And (Graphics_Package.BOTTOM, Graphics_Package.HCENTER);
        elsif (basicHudFactory.ABSOLUTE) = (BasicHud_1'Class (This).getLocation) then
            x := maxHeight;
            y := maxWidth;
            anchor := 0;
        end if;
        return HudGraphicsPosition_Package.Create (BasicHud_1'Class (This).getPoint (x, y), anchor);
   end getHudGraphicsPositionWH;

   procedure onEvent (This : in out BasicHud_1; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, BasicHud_1_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onDisplayChangeEvent (This : in out BasicHud_1; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is
      displayChangeEvent : constant DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
   begin
        This.myFontProcessor := This.updateMyFontProcessor;
   end onDisplayChangeEvent;

   function getPoint (This : in out BasicHud_1; x : Integer; y : Integer) return GPoint_Access is
   begin
        return PointFactory_Package.getInstance.createXY (x, y);
   end getPoint;

   function getBufferZone (This : in out BasicHud_1) return Integer is
   begin
        return This.bufferZone;
   end getBufferZone;

   procedure setBufferZone (This : in out BasicHud_1; bufferZone : Integer) is
   begin
        This.bufferZone := bufferZone;
   end setBufferZone;

   procedure setLocation (This : in out BasicHud_1; location : Integer) is
   begin
        This.location := location;
   end setLocation;

   procedure setDirection (This : in out BasicHud_1; direction : Integer) is
   begin
        This.direction := direction;
   end setDirection;

   function getHudGraphicsPosition (This : in out BasicHud_1) return HudGraphicsPosition_Access is
   begin
        return This.hudGraphicsPosition;
   end getHudGraphicsPosition;

   function getColor (This : in out BasicHud_1) return Integer is
   begin
        return This.color;
   end getColor;

   function getX (This : in out BasicHud_1) return Integer is
   begin
        return This.x;
   end getX;

   procedure setX (This : in out BasicHud_1; x : Integer) is
   begin
        This.x := x;
   end setX;

   procedure setBasicColorP (This : in out BasicHud_1; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out BasicHud_1) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure setY (This : in out BasicHud_1; y : Integer) is
   begin
        This.y := y;
   end setY;

   function getY (This : in out BasicHud_1) return Integer is
   begin
        return This.y;
   end getY;

   procedure paintSSO (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; string2 : Unbounded_String; offset : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, BasicHud_1'Class (This).getBasicColorP);
        graphics.drawString (string_Id, This.x, BasicHud_1'Class (This).getY, This.hudGraphicsPosition.getAnchor);
        graphics.drawString (string2, (This.x) + (offset), BasicHud_1'Class (This).getY, This.hudGraphicsPosition.getAnchor);
   end paintSSO;

   procedure paintSSOO (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; string2 : Unbounded_String; offset : Integer; offset2 : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        graphics.setColor (BasicHud_1'Class (This).getColor);
        graphics.drawString (string_Id, (This.x) + (offset), BasicHud_1'Class (This).getY, This.hudGraphicsPosition.getAnchor);
        graphics.drawString (string2, (This.x) + (offset2), BasicHud_1'Class (This).getY, This.hudGraphicsPosition.getAnchor);
   end paintSSOO;

   procedure paintDXY (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; charArray : Character_Array_Access; offset : Integer; len : Integer; charArray2 : Character_Array_Access; offset2 : Integer; len2 : Integer; xOffset : Integer; xOffset2 : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      y : Integer;
   begin
        This.myFontProcessor.process (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, BasicHud_1'Class (This).getBasicColorP);
        y := BasicHud_1'Class (This).getY;
        graphics.drawChars (charArray, offset, len, (This.x) + (xOffset), y, This.hudGraphicsPosition.getAnchor);
        graphics.drawChars (charArray2, offset2, len2, (This.x) + (xOffset2), y, This.hudGraphicsPosition.getAnchor);
   end paintDXY;

   procedure paintDX (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; charArray : Character_Array_Access; offset : Integer; len : Integer; charArray2 : Character_Array_Access; offset2 : Integer; len2 : Integer; xOffset : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      y : Integer;
   begin
        This.myFontProcessor.process (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, BasicHud_1'Class (This).getBasicColorP);
        y := BasicHud_1'Class (This).getY;
        graphics.drawChars (charArray, offset, len, This.x, y, This.hudGraphicsPosition.getAnchor);
        graphics.drawChars (charArray2, offset2, len2, (This.x) + (xOffset), y, This.hudGraphicsPosition.getAnchor);
   end paintDX;

   procedure paintOffsetAndLength (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; charArray : Character_Array_Access; offset : Integer; len : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      y : Integer;
   begin
        This.myFontProcessor.process (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, BasicHud_1'Class (This).getBasicColorP);
        y := BasicHud_1'Class (This).getY;
        graphics.drawChars (charArray, offset, len, This.x, y, This.hudGraphicsPosition.getAnchor);
   end paintOffsetAndLength;

   procedure paintString (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      y : Integer;
   begin
        This.myFontProcessor.process (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, BasicHud_1'Class (This).getBasicColorP);
        y := (BasicHud_1'Class (This).getY) + (This.offsetY);
        graphics.drawString (string_Id, This.x, y, This.hudGraphicsPosition.getAnchor);
   end paintString;

   procedure getHudGraphicsPositionWH (This : in out BasicHud_1; width : Integer; height : Integer; maxWidth : Integer; maxHeight : Integer) is
      Java_Result : constant HudGraphicsPosition_Access := BasicHud_1'Class (This).getHudGraphicsPositionWH (width, height, maxWidth, maxHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHudGraphicsPositionWH;

   procedure getPoint (This : in out BasicHud_1; x : Integer; y : Integer) is
      Java_Result : constant GPoint_Access := BasicHud_1'Class (This).getPoint (x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoint;

end org.allbinary.game.graphics.hud.BasicHud_1_Package;


