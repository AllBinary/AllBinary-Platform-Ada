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


   procedure Initialize (This : in out PixelDelta'Class; point : GPoint_Access; colorDelta : ColorDelta_Access) is
   begin
      Initialize_Fields (This);
        This.setPoint (point);
        This.setColorDelta (colorDelta);
        This.key := PixelDelta_Package.getKey (This.getPoint, This.getColorDelta);
   end Initialize;

   function Create (point : GPoint_Access; colorDelta : ColorDelta_Access) return PixelDelta_Access is
      This : constant PixelDelta_Access := new PixelDelta;
   begin
      Initialize (This.all, point, colorDelta);
      return This;
   end Create;

   function getKey (This : in out PixelDelta) return Java_Object_Access is
   begin
        return This.key;
   end getKey;

   function getKey (point : GPoint_Access; colorDelta : ColorDelta_Access) return Java_Object_Access is
   begin
        return StringMaker_Package.Create.appendint (Integer (TsUtil_Package.getInstance.hashCode (point))).append (CommonSeps_Package.getInstance.UNDERSCORE).append (colorDelta.getKey.toString).toString;
   end getKey;

   function getPoint (This : in out PixelDelta) return GPoint_Access is
   begin
        return This.point;
   end getPoint;

   procedure setPoint (This : in out PixelDelta; point : GPoint_Access) is
   begin
        This.point := point;
   end setPoint;

   function getColorDelta (This : in out PixelDelta) return ColorDelta_Access is
   begin
        return This.colorDelta;
   end getColorDelta;

   procedure setColorDelta (This : in out PixelDelta; colorDelta : ColorDelta_Access) is
   begin
        This.colorDelta := colorDelta;
   end setColorDelta;

   function toString (This : in out PixelDelta) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("PixelDelta: Point: ")).append (This.point.toString).append (CommonSeps_Package.getInstance.SPACE).append (This.colorDelta.toString).toString;
   end toString;

   procedure getKey (This : in out PixelDelta) is
      Java_Result : constant Java_Object_Access := PixelDelta'Class (This).getKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

   procedure getKey (point : GPoint_Access; colorDelta : ColorDelta_Access) is
      Java_Result : constant Java_Object_Access := getKey (point, colorDelta);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

   procedure getPoint (This : in out PixelDelta) is
      Java_Result : constant GPoint_Access := PixelDelta'Class (This).getPoint;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoint;

   procedure getColorDelta (This : in out PixelDelta) is
      Java_Result : constant ColorDelta_Access := PixelDelta'Class (This).getColorDelta;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColorDelta;

   procedure toString (This : in out PixelDelta) is
      Java_Result : constant Unbounded_String := PixelDelta'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.media.image.comparison.pixel.PixelDelta_Package;


