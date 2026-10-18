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


package body org.allbinary.media.image.comparison.pixel.PixelDelta_Package is

   procedure Initialize_Fields (This : in out PixelDelta'Class) is
   begin
      null;
      This.point := null;
      This.colorDelta := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PixelDelta'Class; point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) is
      point : constant GPoint_Access := GPoint_Access (point_Param);
      colorDelta : constant ColorDelta_Access := ColorDelta_Access (colorDelta_Param);
   begin
      Initialize_Fields (This);
        PixelDelta'Class (This).setPoint (point);
        PixelDelta'Class (This).setColorDelta (colorDelta);
        This.key := PixelDelta_Package.getKey (PixelDelta'Class (This).getPoint, PixelDelta'Class (This).getColorDelta);
   end Initialize;

   function Create (point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) return PixelDelta_Access is
      This : constant PixelDelta_Access := new PixelDelta;
   begin
      PixelDelta_Package.Initialize (This.all, point_Param, colorDelta_Param);
      return This;
   end Create;

   function getKey (This : in out PixelDelta) return Java_Object_Access is
   begin
        return This.key;
   end getKey;

   function getKey (point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) return Java_Object_Access is
      point : constant GPoint_Access := GPoint_Access (point_Param);
      colorDelta : constant ColorDelta_Access := ColorDelta_Access (colorDelta_Param);
   begin
        return StringMaker_Package.Create.appendint (Integer (TsUtil_Package.getInstance.hashCode (point))).append (CommonSeps_Package.getInstance.UNDERSCORE).append (colorDelta.getKey.toString).toString;
   end getKey;

   function getPoint (This : in out PixelDelta) return GPoint_Access is
   begin
        return This.point;
   end getPoint;

   procedure setPoint (This : in out PixelDelta; point_Param : access GPoint_Package.GPoint'Class) is
      point : constant GPoint_Access := GPoint_Access (point_Param);
   begin
        This.point := point;
   end setPoint;

   function getColorDelta (This : in out PixelDelta) return ColorDelta_Access is
   begin
        return This.colorDelta;
   end getColorDelta;

   procedure setColorDelta (This : in out PixelDelta; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) is
      colorDelta : constant ColorDelta_Access := ColorDelta_Access (colorDelta_Param);
   begin
        This.colorDelta := colorDelta;
   end setColorDelta;

   function toString (This : in out PixelDelta) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("PixelDelta: Point: ")).append (This.point.toString).append (CommonSeps_Package.getInstance.SPACE).append (This.colorDelta.toString).toString;
   end toString;

   procedure getKey (point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) is
      Java_Result : constant Java_Object_Access := getKey (point_Param, colorDelta_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

end org.allbinary.media.image.comparison.pixel.PixelDelta_Package;


