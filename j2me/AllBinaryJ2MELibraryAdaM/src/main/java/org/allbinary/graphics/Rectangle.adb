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


package body org.allbinary.graphics.Rectangle_Package is

   procedure Initialize_Fields (This : in out Rectangle'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out Rectangle'Class; point : GPoint_Access; width : Integer; height : Integer) is
   begin
      Initialize_Fields (This);
        This.point := point;
        This.width := width;
        This.height := height;
   end Initialize;

   function Create (point : GPoint_Access; width : Integer; height : Integer) return Rectangle_Access is
      This : constant Rectangle_Access := new Rectangle;
   begin
      Initialize (This.all, point, width, height);
      return This;
   end Create;

   function getPoint (This : in out Rectangle) return GPoint_Access is
   begin
        return This.point;
   end getPoint;

   procedure setPoint (This : in out Rectangle; point : GPoint_Access) is
   begin
        This.point := point;
   end setPoint;

   function getMaxX (This : in out Rectangle) return Integer is
   begin
        return (This.point.getX) + (This.width);
   end getMaxX;

   function getMaxY (This : in out Rectangle) return Integer is
   begin
        return (This.point.getY) + (This.height);
   end getMaxY;

   function getWidth (This : in out Rectangle) return Integer is
   begin
        return This.width;
   end getWidth;

   procedure setWidth (This : in out Rectangle; width : Integer) is
   begin
        This.width := width;
   end setWidth;

   function getHeight (This : in out Rectangle) return Integer is
   begin
        return This.height;
   end getHeight;

   procedure setHeight (This : in out Rectangle; height : Integer) is
   begin
        This.height := height;
   end setHeight;

   function toString (This : in out Rectangle) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.getPoint.toString);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (CommonLabels_Package.getInstance.WIDTH_LABEL);
        stringBuffer.appendint (This.getWidth);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (CommonLabels_Package.getInstance.HEIGHT_LABEL);
        stringBuffer.appendint (This.getHeight);
        stringBuffer.append (To_Unbounded_String (" MaxX: "));
        stringBuffer.appendint (This.getMaxX);
        stringBuffer.append (To_Unbounded_String (" MaxY: "));
        stringBuffer.appendint (This.getMaxY);
        return stringBuffer.toString;
   end toString;

   procedure getPoint (This : in out Rectangle) is
      Java_Result : constant GPoint_Access := Rectangle'Class (This).getPoint;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoint;

   procedure getMaxX (This : in out Rectangle) is
      Java_Result : constant Integer := Rectangle'Class (This).getMaxX;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxX;

   procedure getMaxY (This : in out Rectangle) is
      Java_Result : constant Integer := Rectangle'Class (This).getMaxY;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxY;

   procedure getWidth (This : in out Rectangle) is
      Java_Result : constant Integer := Rectangle'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getHeight (This : in out Rectangle) is
      Java_Result : constant Integer := Rectangle'Class (This).getHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

   procedure toString (This : in out Rectangle) is
      Java_Result : constant Unbounded_String := Rectangle'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.graphics.Rectangle_Package;


