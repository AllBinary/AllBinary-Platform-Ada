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


package body org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package is

   procedure Initialize_Fields (This : in out NumberStringHud'Class) is
   begin
      null;
      
      
      
      
      
      This.offset := 0;
      
      This.valueTotalDigits := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out NumberStringHud'Class; prependString : Unbounded_String; max : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        BasicHud_Package.Initialize (This, location, direction, bufferZone, basicColor);
        Initialize_Fields (This);
        This.prependString := prependString;
        This.PREPEND_STRING := prependString.toCharArray;
        This.valueString := PrimitiveLongSingleton_Package.getInstance.NUMBER_CHAR_ARRAYS (0);
        This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen ((max) + (1));
        This.max := max;
        This.value := 0;
        if (direction) = (0) then
            Java_Throw (Java_New_Exception ("RuntimeException", BasicHudFactory_Package.getInstance.DIRECTION_EXCEPTION));
        end if;
   end Initialize;

   function Create (prependString : Unbounded_String; max : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return NumberStringHud_Access is
      This : constant NumberStringHud_Access := new NumberStringHud;
   begin
      NumberStringHud_Package.Initialize (This.all, prependString, max, location, direction, bufferZone, basicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out NumberStringHud; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.offset := (font.stringWidth (This.prependString)) + (MyFontProcessor_Package.defaultCharWidth (font));
        BasicHud (This).updateMeasurement (graphics);
   end updateMeasurement;

   function get (This : in out NumberStringHud) return Integer is
   begin
        return This.value;
   end get;

   procedure add (This : in out NumberStringHud; value : Integer) is
   begin
        This.set ((This.value) + (value));
   end add;

   procedure set (This : in out NumberStringHud; value : Integer) is
   begin
        This.value := value;
        if (This.value) > (This.max) then
            This.value := 0;
        end if;
        This.valueString := This.primitiveLongUtil.getCharArray (This.value);
        This.valueTotalDigits := This.primitiveLongUtil.getCurrentTotalDigits;
   end set;

   procedure reduce (This : in out NumberStringHud; value : Integer) is
   begin
        This.set ((This.value) - (value));
   end reduce;

   procedure paint (This : in out NumberStringHud; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        BasicHud (This).paintDX (graphics, This.PREPEND_STRING, 0, This.PREPEND_STRING'Length, This.valueString, 0, This.valueTotalDigits, This.offset);
   end paint;

   procedure paintXY (This : in out NumberStringHud; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      charArray : Character_Array_Access;
      len : Integer;
      charArray2 : Character_Array_Access;
      len2 : Integer;
   begin
        This.myFontProcessor.process (graphics);
        charArray := This.PREPEND_STRING;
        len := This.PREPEND_STRING'Length;
        charArray2 := This.valueString;
        len2 := This.valueTotalDigits;
        This.basicSetColorUtil.setBasicColorP (graphics, This.getBasicColorP);
        graphics.drawChars (charArray, 0, len, x, y, 0);
        graphics.drawChars (charArray2, 0, len2, (x) - (This.offset), y, 0);
   end paintXY;

   procedure paintThreed (This : in out NumberStringHud; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

end org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;


