-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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



package body org.allbinary.graphics.color.ColorUtil_Package is

   procedure Initialize_Fields (This : in out ColorUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ColorUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ColorUtil_Access is
      This : constant ColorUtil_Access := new ColorUtil;
   begin
      ColorUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ColorUtil_Access is
   begin
        return ColorUtil_Package.instance;
   end getInstance;

   function isGreyishOrWhiteLike (This : in out ColorUtil; color_Param : access Color_Package.Color'Class) return Boolean is
      color : constant Color_Access := Color_Access (color_Param);
   begin
        if (((abs ((color.getRed) - (color.getGreen))) > (20)) or else ((abs ((color.getRed) - (color.getBlue))) > (20))) or else ((abs ((color.getGreen) - (color.getBlue))) > (20)) then
            return False;
        end if;
        return True;
   end isGreyishOrWhiteLike;

   function isDark (This : in out ColorUtil; color_Param : access Color_Package.Color'Class) return Boolean is
      color : constant Color_Access := Color_Access (color_Param);
   begin
        if (((color.getRed) < (16#77#)) and then ((color.getRed) < (16#77#))) and then ((color.getRed) < (16#77#)) then
            return True;
        end if;
        return False;
   end isDark;

   procedure isGreyishOrWhiteLike (This : in out ColorUtil; color_Param : access Color_Package.Color'Class) is
      Java_Result : constant Boolean := ColorUtil'Class (This).isGreyishOrWhiteLike (color_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isGreyishOrWhiteLike;

   procedure isDark (This : in out ColorUtil; color_Param : access Color_Package.Color'Class) is
      Java_Result : constant Boolean := ColorUtil'Class (This).isDark (color_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDark;

begin
   null;
   instance := ColorUtil_Package.Create;

end org.allbinary.graphics.color.ColorUtil_Package;


