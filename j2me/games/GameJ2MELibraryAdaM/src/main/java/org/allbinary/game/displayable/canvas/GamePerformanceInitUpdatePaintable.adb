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


package body org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package is

   procedure Initialize_Fields (This : in out GamePerformanceInitUpdatePaintable'Class) is
   begin
      null;
      This.halfHeight := DisplayInfoSingleton_Package.getInstance.getLastHalfHeight;
      This.yArray := new Integer_Array'((This.halfHeight) + (30), (This.halfHeight) + (30), ((This.halfHeight) + (30)) + (15), ((This.halfHeight) + (30)) + (15), ((This.halfHeight) + (30)) + (30), ((This.halfHeight) + (30)) + (30), ((This.halfHeight) + (30)) + (45), ((This.halfHeight) + (30)) + (45));
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.baseRefreshHelperCharArray := new Character_Array_Access_Array'(0 .. (0) - 1 => new Character_Array'(0 .. (0) - 1 => ASCII.NUL));
      This.defaultStringWidth := 0;
      This.RED := BasicColorFactory_Package.getInstance.RED.intValue;
   end Initialize_Fields;

   procedure Initialize (This : in out GamePerformanceInitUpdatePaintable'Class) is
   begin
      InitUpdatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return GamePerformanceInitUpdatePaintable_Access is
      This : constant GamePerformanceInitUpdatePaintable_Access := new GamePerformanceInitUpdatePaintable;
   begin
      GamePerformanceInitUpdatePaintable_Package.Initialize (This.all);
      return This;
   end Create;


   procedure updateMeasurement (This : in out GamePerformanceInitUpdatePaintable; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.defaultStringWidth := MyFontProcessor_Package.defaultStringWidth (font, 2);
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure init (This : in out GamePerformanceInitUpdatePaintable) is
   begin
        null;
   end init;

   procedure update (This : in out GamePerformanceInitUpdatePaintable) is
   begin
        This.baseRefreshHelperCharArray := GameStatisticsFactory_Package.getInstance.to2DCharArray;
   end update;

   procedure paint (This : in out GamePerformanceInitUpdatePaintable; graphics : Graphics_Access) is
      charArray : Character_Array_Access;
      charArray2 : Character_Array_Access;
      size2 : Integer;
      size3 : Integer;
      size : Integer;
      index : Integer;
   begin
        This.myFontProcessor.process (graphics);
        graphics.setColor (This.RED);
        charArray := null;
        charArray2 := null;
        size2 := 0;
        size3 := 0;
        size := (This.baseRefreshHelperCharArray'Length) - (2);
        index := size;
        while (index) >= (0) loop
            charArray := This.baseRefreshHelperCharArray (index);
            charArray2 := This.baseRefreshHelperCharArray ((index) + (1));
            size2 := charArray'Length;
            size3 := charArray2'Length;
            graphics.drawChars (charArray, 0, size2, 0, This.yArray (index), 0);
            graphics.drawChars (charArray2, 0, size3, (size2) * (This.defaultStringWidth), This.yArray ((index) + (1)), 0);
            index := (index) - (2);
        end loop;
   end paint;

end org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package;


