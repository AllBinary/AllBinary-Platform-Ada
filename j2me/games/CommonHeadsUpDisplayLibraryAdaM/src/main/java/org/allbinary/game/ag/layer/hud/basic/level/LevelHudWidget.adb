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


package body org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package is

   procedure Initialize_Fields (This : in out LevelHudWidget'Class) is
   begin
      null;
      
      
      
      This.levelNumberCharArray := NullUtil_Package.getInstance.NULL_CHAR_ARRAY;
      This.levelNumberTotalDigits := 0;
      This.offset := 0;
      
   end Initialize_Fields;


   --  throws Exception
   function createHud (maxlevel : Integer; location : Integer; direction : Integer) return LevelHudWidget_Access is
   begin
        return LevelHudWidget_Package.Create (maxlevel, location, direction);
   end createHud;

   procedure Initialize (This : in out LevelHudWidget'Class; maxlevel : Integer; location : Integer; direction : Integer) is
      LEVEL : Unbounded_String;
   begin
        BasicHud_Package.Initialize (This, location, direction, 2, BasicColorFactory_Package.getInstance.GREY);
        Initialize_Fields (This);
        This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen (1000);
        LEVEL := To_Unbounded_String ("Lv ");
        This.levelString := LEVEL.toCharArray;
        This.maxlevel := maxlevel;
        This.level := maxlevel;
        This.update;
        This.updateMaxHeight := 14;
   end Initialize;

   function Create (maxlevel : Integer; location : Integer; direction : Integer) return LevelHudWidget_Access is
      This : constant LevelHudWidget_Access := new LevelHudWidget;
   begin
      LevelHudWidget_Package.Initialize (This.all, maxlevel, location, direction);
      return This;
   end Create;

   procedure updateMeasurement (This : in out LevelHudWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.updateMaxWidth := (font.getSize) * (4);
        This.offset := (font.charsWidth (This.levelString, 0, This.levelString'Length)) + (font.getSize);
        BasicHud (This).updateMeasurement (graphics);
   end updateMeasurement;

   procedure update (This : in out LevelHudWidget) is
   begin
        This.levelNumberCharArray := This.primitiveLongUtil.getCharArray (This.level);
        This.levelNumberTotalDigits := This.primitiveLongUtil.getCurrentTotalDigits;
   end update;

   procedure setLevel (This : in out LevelHudWidget; level : Integer) is
   begin
        This.level := level;
        This.update;
   end setLevel;

   procedure nextLevel (This : in out LevelHudWidget) is
   begin
        This.level := This.level + 1;
        This.update;
   end nextLevel;

   procedure previousLevel (This : in out LevelHudWidget) is
   begin
        This.level := This.level - 1;
        if (This.level) < (0) then
            This.level := 0;
        end if;
        This.update;
   end previousLevel;

   function isComplete (This : in out LevelHudWidget) return Boolean is
   begin
        if (This.level) <= (This.maxlevel) then
            return False;
        else
            return True;
        end if;
   end isComplete;

   procedure paint (This : in out LevelHudWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        BasicHud (This).paintDX (graphics, This.levelString, 0, This.levelString'Length, This.levelNumberCharArray, 0, This.levelNumberTotalDigits, This.offset);
   end paint;

   procedure paintThreed (This : in out LevelHudWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

   procedure createHud (maxlevel : Integer; location : Integer; direction : Integer) is
      Java_Result : constant LevelHudWidget_Access := createHud (maxlevel, location, direction);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHud;

end org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package;


