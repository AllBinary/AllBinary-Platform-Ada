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


package body org.allbinary.media.AllBinaryVisualDebugVibration_Package is

   procedure Initialize_Fields (This : in out AllBinaryVisualDebugVibration'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (Integer_Package.MAX_VALUE);
      This.VIBRATING := To_Unbounded_String ("Vibrating");
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.anchor := Anchor_Package.TOP_LEFT;
      This.width := 0;
   end Initialize_Fields;

   procedure Initialize (This : in out AllBinaryVisualDebugVibration'Class) is
   begin
      AllBinaryVibrationME_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryVisualDebugVibration_Access is
      This : constant AllBinaryVisualDebugVibration_Access := new AllBinaryVisualDebugVibration;
   begin
      AllBinaryVisualDebugVibration_Package.Initialize (This.all);
      return This;
   end Create;


   procedure updateMeasurement (This : in out AllBinaryVisualDebugVibration; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.width := font.stringWidth (This.VIBRATING);
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure vibrate (This : in out AllBinaryVisualDebugVibration; duration : Integer; type_Id : Integer; volume : Integer) is
   begin
        This.timeDelayHelper.delay_Id := duration;
   end vibrate;

   procedure paint (This : in out AllBinaryVisualDebugVibration; graphics : Graphics_Access) is
   begin
        if This.timeDelayHelper.isTimeTNT then
            This.timeDelayHelper.delay_Id := Integer_Package.MAX_VALUE;
            This.myFontProcessor.process (graphics);
            graphics.drawString (This.VIBRATING, (This.displayInfoSingleton.getLastHalfWidth) - ((Java_Shift_Right_Arithmetic (This.width, 1))), 0, This.anchor);
        end if;
   end paint;

end org.allbinary.media.AllBinaryVisualDebugVibration_Package;


