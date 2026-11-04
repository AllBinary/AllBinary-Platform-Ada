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


with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;

package body org.allbinary.graphics.color.ColorTemperatureUtil_Package is

   subtype BasicColorFactory_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access;
   function "=" (Left, Right : BasicColorFactory_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
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
        return ColorTemperatureUtil_Access (ColorTemperatureUtil_Package.instance);
   end getInstance;

   function getBasicColor (This : in out ColorTemperatureUtil; thirdTemp : Integer) return BasicColor_Access is
      basicColor : BasicColor_Access;
   begin
        basicColor := BasicColor_Access (This.basicColorFactory.RED);
        if (thirdTemp) > (3700) then
            basicColor := BasicColor_Access (This.basicColorFactory.PURPLE);
        elsif (thirdTemp) > (3200) then
            basicColor := BasicColor_Access (This.basicColorFactory.BLUE);
        elsif (thirdTemp) > (2700) then
            basicColor := BasicColor_Access (This.basicColorFactory.PUCE);
        elsif (thirdTemp) > (2200) then
            basicColor := BasicColor_Access (This.basicColorFactory.WHITE);
        elsif (thirdTemp) > (1700) then
            basicColor := BasicColor_Access (This.basicColorFactory.GREEN);
        elsif (thirdTemp) > (1200) then
            basicColor := BasicColor_Access (This.basicColorFactory.YELLOW);
        elsif (thirdTemp) > (700) then
            basicColor := BasicColor_Access (This.basicColorFactory.ORANGE);
        end if;
        return basicColor;
   end getBasicColor;

   procedure getBasicColor (This : in out ColorTemperatureUtil; thirdTemp : Integer) is
      Java_Result : constant BasicColor_Access := ColorTemperatureUtil'Class (This).getBasicColor (thirdTemp => thirdTemp);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicColor;

begin
   null;
   instance := ColorTemperatureUtil_Package.Create;

end org.allbinary.graphics.color.ColorTemperatureUtil_Package;


