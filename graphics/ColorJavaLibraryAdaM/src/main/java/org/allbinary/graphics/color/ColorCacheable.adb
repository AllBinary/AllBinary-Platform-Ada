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



package body org.allbinary.graphics.color.ColorCacheable_Package is

   procedure Initialize_Fields (This : in out ColorCacheable'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ColorCacheable'Class; key_Param : access Java_Object'Class) is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
   begin
      Initialize_Fields (This);
        This.key := key;
        This.color := Color_Package.Create (Java_Unbox_Integer (key).intValue);
   end Initialize;

   function Create (key_Param : access Java_Object'Class) return ColorCacheable_Access is
      This : constant ColorCacheable_Access := new ColorCacheable;
   begin
      ColorCacheable_Package.Initialize (This.all, key_Param);
      return This;
   end Create;

   function getKey (This : in out ColorCacheable) return Java_Object_Access is
   begin
        return This.key;
   end getKey;

   function getColor (This : in out ColorCacheable) return Color_Access is
   begin
        return This.color;
   end getColor;

   procedure setColor (This : in out ColorCacheable; color_Param : access Color_Package.Color'Class) is
      color : constant Color_Access := Color_Access (color_Param);
   begin
        This.color := color;
   end setColor;

end org.allbinary.graphics.color.ColorCacheable_Package;


