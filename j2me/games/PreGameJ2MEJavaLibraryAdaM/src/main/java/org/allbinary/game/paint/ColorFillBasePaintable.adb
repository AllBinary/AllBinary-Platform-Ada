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


package body org.allbinary.game.paint.ColorFillBasePaintable_Package is

   procedure Initialize_Fields (This : in out ColorFillBasePaintable'Class) is
   begin
      null;
      This.basicColor := BasicColorFactory_Package.getInstance.WHITE;
      This.colorP := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorFillBasePaintable'Class; basicColor : BasicColor_Access) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.setBasicColorP (basicColor);
   end Initialize;

   function Create (basicColor : BasicColor_Access) return ColorFillBasePaintable_Access is
      This : constant ColorFillBasePaintable_Access := new ColorFillBasePaintable;
   begin
      Initialize (This.all, basicColor);
      return This;
   end Create;

   procedure setBasicColorP (This : in out ColorFillBasePaintable; basicColor : BasicColor_Access) is
   begin
        This.basicColor := basicColor;
        This.setColor (This.getBasicColorP.intValue);
   end setBasicColorP;

   function getBasicColorP (This : in out ColorFillBasePaintable) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   function getColor (This : in out ColorFillBasePaintable) return Integer is
   begin
        return This.colorP;
   end getColor;

   procedure setColor (This : in out ColorFillBasePaintable; color : Integer) is
   begin
        This.colorP := color;
   end setColor;

   procedure paint (This : in out ColorFillBasePaintable; graphics : Graphics_Access) is
   begin
        null;
   end paint;

   procedure getBasicColorP (This : in out ColorFillBasePaintable) is
      Java_Result : constant BasicColor_Access := ColorFillBasePaintable'Class (This).getBasicColorP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicColorP;

   procedure getColor (This : in out ColorFillBasePaintable) is
      Java_Result : constant Integer := ColorFillBasePaintable'Class (This).getColor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColor;

end org.allbinary.game.paint.ColorFillBasePaintable_Package;


