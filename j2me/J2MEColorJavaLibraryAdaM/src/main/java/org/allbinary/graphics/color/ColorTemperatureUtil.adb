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


package body org.allbinary.graphics.color.ColorTemperatureUtil_Package is

   procedure Initialize_Fields (This : in out ColorTemperatureUtil'Class) is
   begin
      null;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ColorTemperatureUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ColorTemperatureUtil_Access is
      This : constant ColorTemperatureUtil_Access := new ColorTemperatureUtil;
   begin
      ColorTemperatureUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ColorTemperatureUtil_Access is
   begin
        return ColorTemperatureUtil_Package.instance;
   end getInstance;

   function getBasicColor (This : in out ColorTemperatureUtil; thirdTemp : Integer) return BasicColor_Access is
      basicColor : BasicColor_Access;
   begin
        basicColor := This.basicColorFactory.RED;
        if (thirdTemp) > (3700) then
            basicColor := This.basicColorFactory.PURPLE;
        elsif (thirdTemp) > (3200) then
            basicColor := This.basicColorFactory.BLUE;
        elsif (thirdTemp) > (2700) then
            basicColor := This.basicColorFactory.PUCE;
        elsif (thirdTemp) > (2200) then
            basicColor := This.basicColorFactory.WHITE;
        elsif (thirdTemp) > (1700) then
            basicColor := This.basicColorFactory.GREEN;
        elsif (thirdTemp) > (1200) then
            basicColor := This.basicColorFactory.YELLOW;
        elsif (thirdTemp) > (700) then
            basicColor := This.basicColorFactory.ORANGE;
        end if;
        return basicColor;
   end getBasicColor;

   procedure getBasicColor (This : in out ColorTemperatureUtil; thirdTemp : Integer) is
      Java_Result : constant BasicColor_Access := ColorTemperatureUtil'Class (This).getBasicColor (thirdTemp);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicColor;

begin
   null;
   instance := ColorTemperatureUtil_Package.Create;

end org.allbinary.graphics.color.ColorTemperatureUtil_Package;


