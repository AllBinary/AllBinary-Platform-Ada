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


package body org.allbinary.graphics.GPoint_Package is

   procedure Initialize_Fields (This : in out GPoint'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   function getInstance (point_Param : access GPoint'Class) return GPoint_Access is
      point : GPoint_Access := GPoint_Access (point_Param);
   begin
        return GPoint_Package.Create (point.getX, point.getY, point.getZ);
   end getInstance;

   procedure Initialize (This : in out GPoint'Class; x : Integer; y : Integer; z : Integer) is
   begin
      Initialize_Fields (This);
        This.x := x;
        This.y := y;
        This.z := z;
   end Initialize;

   function Create (x : Integer; y : Integer; z : Integer) return GPoint_Access is
      This : constant GPoint_Access := new GPoint;
   begin
      GPoint_Package.Initialize (This.all, x, y, z);
      return This;
   end Create;

   function getX (This : in out GPoint) return Integer is
   begin
        return This.x;
   end getX;

   function getY (This : in out GPoint) return Integer is
   begin
        return This.y;
   end getY;

   function getZ (This : in out GPoint) return Integer is
   begin
        return This.z;
   end getZ;

   function getRawX (This : in out GPoint) return Integer is
   begin
        return This.x;
   end getRawX;

   function getRawY (This : in out GPoint) return Integer is
   begin
        return This.y;
   end getRawY;

   function getRawZ (This : in out GPoint) return Integer is
   begin
        return This.z;
   end getRawZ;

   function toString (This : in out GPoint) return Unbounded_String is
   begin
        return GPoint_Package.toStringStatic (This.getX, This.getY, This.getZ);
   end toString;

   function toStringStatic (x : Integer; y : Integer; z : Integer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      positionStrings : PositionStrings_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        positionStrings := PositionStrings_Package.getInstance;
        stringBuffer.append (GPoint_Package.POINT_LABEL);
        stringBuffer.append (positionStrings.X_LABEL);
        stringBuffer.appendint (x);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (positionStrings.Y_LABEL);
        stringBuffer.appendint (y);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (positionStrings.Z_LABEL);
        stringBuffer.appendint (z);
        return stringBuffer.toString;
   end toStringStatic;

   procedure getInstance (point_Param : access GPoint'Class) is
      Java_Result : constant GPoint_Access := getInstance (point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure toStringStatic (x : Integer; y : Integer; z : Integer) is
      Java_Result : constant Unbounded_String := toStringStatic (x, y, z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringStatic;

begin
   null;
   POINT_LABEL := To_Unbounded_String ("Point: ");

end org.allbinary.graphics.GPoint_Package;


