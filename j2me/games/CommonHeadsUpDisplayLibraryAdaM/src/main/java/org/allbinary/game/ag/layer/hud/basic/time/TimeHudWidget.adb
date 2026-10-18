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


package body org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package is

   procedure Initialize_Fields (This : in out TimeHudWidget'Class) is
   begin
      null;
      This.TIME_STRING := To_Unbounded_String ("Time ");
      This.TIME_CHAR_ARRAY := new Character_Array'('T', 'i', 'm', 'e', ' ');
      This.offset := 0;
      This.string_Id := PrimitiveLongSingleton_Package.getInstance.ZERO;
      This.totalDigits := 1;
      
   end Initialize_Fields;


   --  throws Exception
   function getInstance (location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access Timer_Package.Timer'Class) return TimeHudWidget_Access is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      timer : constant Timer_Access := Timer_Access (timer_Param);
   begin
        return TimeHudWidget_Package.Create (location, direction, 2, basicColor, timer);
   end getInstance;

   procedure Initialize (This : in out TimeHudWidget'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access Timer_Package.Timer'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      timer : constant Timer_Access := Timer_Access (timer_Param);
   begin
        BasicHud_Package.Initialize (This, location, direction, bufferZone, basicColor);
        Initialize_Fields (This);
        This.timer := timer;
        TimeHudWidget'Class (This).set;
        This.updateMaxHeight := 14;
   end Initialize;

   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access Timer_Package.Timer'Class) return TimeHudWidget_Access is
      This : constant TimeHudWidget_Access := new TimeHudWidget;
   begin
      TimeHudWidget_Package.Initialize (This.all, location, direction, bufferZone, basicColor_Param, timer_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out TimeHudWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.updateMaxWidth := (font.getSize) * (5);
        This.offset := (font.stringWidth (This.TIME_STRING)) + (MyFontProcessor_Package.defaultStringWidth (font, 3));
        BasicHud (This).updateMeasurement (graphics);
   end updateMeasurement;

   procedure update (This : in out TimeHudWidget) is
   begin
        This.timer.update;
        TimeHudWidget'Class (This).set;
   end update;

   procedure set (This : in out TimeHudWidget) is
   begin
        This.string_Id := This.timer.getTimeChars;
        This.totalDigits := This.timer.getCurrentTotalDigits;
   end set;

   function getTimer (This : in out TimeHudWidget) return Timer_Access is
   begin
        return This.timer;
   end getTimer;

   procedure paint (This : in out TimeHudWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        BasicHud (This).paintDX (graphics, This.TIME_CHAR_ARRAY, 0, This.TIME_CHAR_ARRAY'Length, This.string_Id, 0, This.totalDigits, This.offset);
   end paint;

   procedure getInstance (location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; timer_Param : access Timer_Package.Timer'Class) is
      Java_Result : constant TimeHudWidget_Access := getInstance (location, direction, basicColor_Param, timer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package;


