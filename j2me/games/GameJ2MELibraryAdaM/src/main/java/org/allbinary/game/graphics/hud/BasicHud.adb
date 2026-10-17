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


package body org.allbinary.game.graphics.hud.BasicHud_Package is

   procedure Initialize_Fields (This : in out BasicHud'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.canvasStrings := CanvasStrings_Package.getInstance;
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.myFontProcessor := This.updateMyFontProcessor;
      This.location := 0;
      This.direction := 0;
      This.bufferZone := 0;
      This.bufferZoneY := 0;
      This.hudGraphicsPosition := HudGraphicsPosition_Package.NULL_HUD_GRAPHICS_POSITION;
      This.x := 0;
      This.y := 0;
      This.basicColor := BasicColorFactory_Package.getInstance.BLACK;
      
      This.updateMaxWidth := 0;
      This.updateMaxHeight := 0;
      This.offsetY := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicHud'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor : BasicColor_Access) is
   begin
      Initialize_Fields (This);
        This.setLocation (location);
        This.setDirection (direction);
        This.setBufferZone (bufferZone);
        This.onDisplayChangeEvent (DisplayInfoSingleton_Package.getInstance.displayChangeEvent);
        This.setBasicColorP (basicColor);
        This.color := basicColor.intValue;
   end Initialize;

   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor : BasicColor_Access) return BasicHud_Access is
      This : constant BasicHud_Access := new BasicHud;
   begin
      BasicHud_Package.Initialize (This.all, location, direction, bufferZone, basicColor);
      return This;
   end Create;

   procedure updateMeasurement (This : in out BasicHud; graphics : Graphics_Access) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.hudGraphicsPosition := This.getHudGraphicsPositionWH (This.displayInfo.getLastWidth, This.displayInfo.getLastHeight, This.updateMaxWidth, This.updateMaxHeight);
            This.x := This.hudGraphicsPosition.getPoint.getX;
            This.setY (This.hudGraphicsPosition.getPoint.getY);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
                end;
        end;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   function getLocation (This : in out BasicHud) return Integer is
   begin
        return This.location;
   end getLocation;

   function getDirection (This : in out BasicHud) return Integer is
   begin
        return This.direction;
   end getDirection;

   --  throws Exception
   function getHudGraphicsPositionWH (This : in out BasicHud; width : Integer; height : Integer; maxWidth : Integer; maxHeight : Integer) return HudGraphicsPosition_Access is
      x : Integer;
      y : Integer;
      anchor : Integer;
      basicHudFactory : BasicHudFactory_Access;
   begin
        x := 0;
        y := 0;
        anchor := 0;
        basicHudFactory := BasicHudFactory_Package.getInstance;
        if (basicHudFactory.BOTTOMLEFT) = (This.getLocation) then
            x := (This.bufferZone) + (2);
            y := ((height) - (maxHeight)) - (This.bufferZone);
            anchor := Java_And (Graphics_Package.BOTTOM, Graphics_Package.LEFT);
        elsif (basicHudFactory.BOTTOMRIGHT) = (This.getLocation) then
            x := (width) - (maxWidth);
            y := ((height) - (maxHeight)) - (This.bufferZone);
            anchor := Java_And (Graphics_Package.BOTTOM, Graphics_Package.RIGHT);
        elsif (basicHudFactory.TOPLEFT) = (This.getLocation) then
            x := (This.bufferZone) + (2);
            y := This.bufferZoneY;
            anchor := Anchor_Package.TOP_LEFT;
        elsif (basicHudFactory.TOPRIGHT) = (This.getLocation) then
            x := (width) - (maxWidth);
            y := This.bufferZoneY;
            anchor := Java_And (Graphics_Package.TOP, Graphics_Package.RIGHT);
        elsif (basicHudFactory.TOPCENTER) = (This.getLocation) then
            x := ((((width) - (maxWidth))) / (2));
            y := This.bufferZoneY;
            anchor := Java_And (Graphics_Package.TOP, Graphics_Package.HCENTER);
        elsif (basicHudFactory.BOTTOMCENTER) = (This.getLocation) then
            x := ((((width) - (maxWidth))) / (2));
            y := ((height) - (maxHeight)) - (This.bufferZone);
            anchor := Java_And (Graphics_Package.BOTTOM, Graphics_Package.HCENTER);
        elsif (basicHudFactory.ABSOLUTE) = (This.getLocation) then
            x := maxHeight;
            y := maxWidth;
            anchor := 0;
        end if;
        return HudGraphicsPosition_Package.Create (This.getPoint (x, y), anchor);
   end getHudGraphicsPositionWH;

   procedure onEvent (This : in out BasicHud; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onDisplayChangeEvent (This : in out BasicHud; displayChangeEvent : DisplayChangeEvent_Access) is
   begin
        This.myFontProcessor := This.updateMyFontProcessor;
   end onDisplayChangeEvent;

   function getPoint (This : in out BasicHud; x : Integer; y : Integer) return GPoint_Access is
   begin
        return PointFactory_Package.getInstance.createXY (x, y);
   end getPoint;

   function getBufferZone (This : in out BasicHud) return Integer is
   begin
        return This.bufferZone;
   end getBufferZone;

   procedure setBufferZone (This : in out BasicHud; bufferZone : Integer) is
   begin
        This.bufferZone := bufferZone;
        if J2MEUtil_Package.isHTML then
            This.bufferZoneY := This.bufferZone;
        else
            This.bufferZoneY := (This.bufferZone) + (5);
        end if;
   end setBufferZone;

   procedure setLocation (This : in out BasicHud; location : Integer) is
   begin
        This.location := location;
   end setLocation;

   procedure setDirection (This : in out BasicHud; direction : Integer) is
   begin
        This.direction := direction;
   end setDirection;

   function getHudGraphicsPosition (This : in out BasicHud) return HudGraphicsPosition_Access is
   begin
        return This.hudGraphicsPosition;
   end getHudGraphicsPosition;

   function getColor (This : in out BasicHud) return Integer is
   begin
        return This.color;
   end getColor;

   function getX (This : in out BasicHud) return Integer is
   begin
        return This.x;
   end getX;

   procedure setX (This : in out BasicHud; x : Integer) is
   begin
        This.x := x;
   end setX;

   procedure setBasicColorP (This : in out BasicHud; basicColor : BasicColor_Access) is
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out BasicHud) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure setY (This : in out BasicHud; y : Integer) is
   begin
        This.y := y;
   end setY;

   function getY (This : in out BasicHud) return Integer is
   begin
        return This.y;
   end getY;

   procedure paintSSO (This : in out BasicHud; graphics : Graphics_Access; string_Id : Unbounded_String; string2 : Unbounded_String; offset : Integer) is
   begin
        This.myFontProcessor.process (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, This.getBasicColorP);
        graphics.drawString (string_Id, This.x, This.getY, This.hudGraphicsPosition.getAnchor);
        graphics.drawString (string2, (This.x) + (offset), This.getY, This.hudGraphicsPosition.getAnchor);
   end paintSSO;

   procedure paintSSOO (This : in out BasicHud; graphics : Graphics_Access; string_Id : Unbounded_String; string2 : Unbounded_String; offset : Integer; offset2 : Integer) is
   begin
        This.myFontProcessor.process (graphics);
        graphics.setColor (This.getColor);
        graphics.drawString (string_Id, (This.x) + (offset), This.getY, This.hudGraphicsPosition.getAnchor);
        graphics.drawString (string2, (This.x) + (offset2), This.getY, This.hudGraphicsPosition.getAnchor);
   end paintSSOO;

   procedure paintDXY (This : in out BasicHud; graphics : Graphics_Access; charArray : Character_Array_Access; offset : Integer; len : Integer; charArray2 : Character_Array_Access; offset2 : Integer; len2 : Integer; xOffset : Integer; xOffset2 : Integer) is
      y : Integer;
   begin
        This.myFontProcessor.process (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, This.getBasicColorP);
        y := This.getY;
        graphics.drawChars (charArray, offset, len, (This.x) + (xOffset), y, This.hudGraphicsPosition.getAnchor);
        graphics.drawChars (charArray2, offset2, len2, (This.x) + (xOffset2), y, This.hudGraphicsPosition.getAnchor);
   end paintDXY;

   procedure paintDX (This : in out BasicHud; graphics : Graphics_Access; charArray : Character_Array_Access; offset : Integer; len : Integer; charArray2 : Character_Array_Access; offset2 : Integer; len2 : Integer; xOffset : Integer) is
      y : Integer;
   begin
        This.myFontProcessor.process (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, This.getBasicColorP);
        y := This.getY;
        graphics.drawChars (charArray, offset, len, This.x, y, This.hudGraphicsPosition.getAnchor);
        graphics.drawChars (charArray2, offset2, len2, (This.x) + (xOffset), y, This.hudGraphicsPosition.getAnchor);
   end paintDX;

   procedure paintOffsetAndLength (This : in out BasicHud; graphics : Graphics_Access; charArray : Character_Array_Access; offset : Integer; len : Integer) is
      y : Integer;
   begin
        This.myFontProcessor.process (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, This.getBasicColorP);
        y := This.getY;
        graphics.drawChars (charArray, offset, len, This.x, y, This.hudGraphicsPosition.getAnchor);
   end paintOffsetAndLength;

   procedure paintString (This : in out BasicHud; graphics : Graphics_Access; string_Id : Unbounded_String) is
      y : Integer;
   begin
        This.myFontProcessor.process (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, This.getBasicColorP);
        y := (This.getY) + (This.offsetY);
        graphics.drawString (string_Id, This.x, y, This.hudGraphicsPosition.getAnchor);
   end paintString;

   procedure getHudGraphicsPositionWH (This : in out BasicHud; width : Integer; height : Integer; maxWidth : Integer; maxHeight : Integer) is
      Java_Result : constant HudGraphicsPosition_Access := BasicHud'Class (This).getHudGraphicsPositionWH (width, height, maxWidth, maxHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHudGraphicsPositionWH;

   procedure getPoint (This : in out BasicHud; x : Integer; y : Integer) is
      Java_Result : constant GPoint_Access := BasicHud'Class (This).getPoint (x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoint;

end org.allbinary.game.graphics.hud.BasicHud_Package;


