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


package body org.allbinary.media.image.comparison.color.ColorDelta_Package is

   procedure Initialize_Fields (This : in out ColorDelta'Class) is
   begin
      null;
      This.rgb1 := 0;
      This.rgb2 := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ColorDelta'Class; rgb1 : Integer; rgb2 : Integer) is
   begin
      Initialize_Fields (This);
        This.setRgb1 (rgb1);
        This.setRgb2 (rgb2);
        This.key := ColorDelta_Package.getKey (rgb1, rgb2);
   end Initialize;

   function Create (rgb1 : Integer; rgb2 : Integer) return ColorDelta_Access is
      This : constant ColorDelta_Access := new ColorDelta;
   begin
      ColorDelta_Package.Initialize (This.all, rgb1, rgb2);
      return This;
   end Create;

   function getKey (This : in out ColorDelta) return Java_Object_Access is
   begin
        return This.key;
   end getKey;

   function getKey (rgb1 : Integer; rgb2 : Integer) return Java_Object_Access is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String (Java_Image (rgb1))).append (CommonSeps_Package.getInstance.UNDERSCORE).append (To_Unbounded_String (Java_Image (rgb2))).toString;
   end getKey;

   function getRgb1 (This : in out ColorDelta) return Integer is
   begin
        return This.rgb1;
   end getRgb1;

   procedure setRgb1 (This : in out ColorDelta; rgb1 : Integer) is
   begin
        This.rgb1 := rgb1;
   end setRgb1;

   function getRgb2 (This : in out ColorDelta) return Integer is
   begin
        return This.rgb2;
   end getRgb2;

   procedure setRgb2 (This : in out ColorDelta; rgb2 : Integer) is
   begin
        This.rgb2 := rgb2;
   end setRgb2;

   function toString (This : in out ColorDelta) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("ColorDelta: ")).append (StringUtil_Package.getInstance.toString (This.getKey)).append (To_Unbounded_String (" RGB1: ")).appendint (This.getRgb1).append (To_Unbounded_String (" RGB2: ")).appendint (This.getRgb2).toString;
   end toString;

   procedure getKey (rgb1 : Integer; rgb2 : Integer) is
      Java_Result : constant Java_Object_Access := getKey (rgb1, rgb2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

end org.allbinary.media.image.comparison.color.ColorDelta_Package;


