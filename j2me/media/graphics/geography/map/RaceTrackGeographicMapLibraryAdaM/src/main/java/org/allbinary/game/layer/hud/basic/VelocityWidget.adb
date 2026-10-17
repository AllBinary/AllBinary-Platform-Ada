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


package body org.allbinary.game.layer.hud.basic.VelocityWidget_Package is

   procedure Initialize_Fields (This : in out VelocityWidget'Class) is
   begin
      null;
      This.KILOMETERS_PER_HOUR_STR := new Character_Array'(' ', 'k', 'm', '/', 'h');
      This.totalChars := This.KILOMETERS_PER_HOUR_STR'Length;
      
      
      This.string_Id := PrimitiveLongSingleton_Package.getInstance.ZERO;
      This.totalDigits := 1;
      
      
      This.offset := 0;
      This.offset2 := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out VelocityWidget'Class; powerOfTenVelocity : Integer; location : Integer; direction : Integer; basicColor : BasicColor_Access) is
   begin
        BasicHud_Package.Initialize (This, location, direction, 2, basicColor);
        Initialize_Fields (This);
        This.powerOfTenVelocity := powerOfTenVelocity;
        This.maxVelocity := powerOfTenVelocity;
        This.velocity := 0;
        This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen (powerOfTenVelocity);
        This.updateMaxHeight := 14;
   end Initialize;

   function Create (powerOfTenVelocity : Integer; location : Integer; direction : Integer; basicColor : BasicColor_Access) return VelocityWidget_Access is
      This : constant VelocityWidget_Access := new VelocityWidget;
   begin
      VelocityWidget_Package.Initialize (This.all, powerOfTenVelocity, location, direction, basicColor);
      return This;
   end Create;

   procedure updateMeasurement (This : in out VelocityWidget; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.updateMaxWidth := (font.getSize) * ((((5) + (MathUtil_Package.getInstance.getTotalDigits (This.powerOfTenVelocity))) + (1)));
        BasicHud (This).updateMeasurement (graphics);
        This.offset := (MyFontProcessor_Package.defaultStringWidth (font, This.primitiveLongUtil.getMaxDigits)) + (MyFontProcessor_Package.defaultStringWidth (font, 2));
        This.offset2 := ((This.offset) - (MyFontProcessor_Package.defaultStringWidth (font, This.totalDigits))) - (MyFontProcessor_Package.defaultStringWidth (font, 2));
   end updateMeasurement;

   function get (This : in out VelocityWidget) return Integer is
   begin
        return This.velocity;
   end get;

   procedure add (This : in out VelocityWidget; value : Integer) is
   begin
        This.set ((This.velocity) + (value));
   end add;

   procedure set (This : in out VelocityWidget; value : Integer) is
      lastVelocity : Integer;
   begin
        lastVelocity := This.velocity;
        This.velocity := value;
        if (This.velocity) > (This.maxVelocity) then
            This.velocity := 0;
        end if;
        if (lastVelocity) /= (This.velocity) then
            This.string_Id := This.primitiveLongUtil.getCharArray ((This.velocity) * (18));
            if OpenGLFeatureUtil_Package.getInstance.isAnyThreed then
                This.totalDigits := (This.primitiveLongUtil.getCurrentTotalDigits) + (1);
            else
                This.totalDigits := This.primitiveLongUtil.getCurrentTotalDigits;
            end if;
            This.myFontProcessor := This.updateMyFontProcessor;
        end if;
   end set;

   procedure reduce (This : in out VelocityWidget; value : Integer) is
   begin
        This.set ((This.velocity) - (value));
   end reduce;

   procedure paint (This : in out VelocityWidget; graphics : Graphics_Access) is
   begin
        BasicHud (This).paintDXY (graphics, This.string_Id, 0, This.totalDigits, This.KILOMETERS_PER_HOUR_STR, 0, This.totalChars, This.offset2, This.offset);
   end paint;

end org.allbinary.game.layer.hud.basic.VelocityWidget_Package;


