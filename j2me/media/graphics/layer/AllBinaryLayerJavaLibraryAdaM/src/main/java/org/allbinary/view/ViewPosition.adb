-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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



package body org.allbinary.view.ViewPosition_Package is

   procedure Initialize_Fields (This : in out ViewPosition'Class) is
   begin
      null;
      This.allbinaryLayer := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
   end Initialize_Fields;


   function getInstanceD return ViewPosition_Access is
   begin
        return ViewPosition_Package.Create (0, 0, 0);
   end getInstanceD;

   procedure Initialize (This : in out ViewPosition'Class; x : Integer; y : Integer; z : Integer) is
   begin
        ViewPositionBase_Package.Initialize (This, x, y, z);
        Initialize_Fields (This);
   end Initialize;

   function Create (x : Integer; y : Integer; z : Integer) return ViewPosition_Access is
      This : constant ViewPosition_Access := new ViewPosition;
   begin
      ViewPosition_Package.Initialize (This.all, x, y, z);
      return This;
   end Create;

   function getX (This : in out ViewPosition) return Integer is
   begin
        return This.allbinaryLayer.getXP;
   end getX;

   function getY (This : in out ViewPosition) return Integer is
   begin
        return This.allbinaryLayer.getYP;
   end getY;

   function getZ (This : in out ViewPosition) return Integer is
   begin
        return This.allbinaryLayer.getZP;
   end getZ;

   function getX2 (This : in out ViewPosition) return Integer is
   begin
        return (ViewPosition'Class (This).getX) + (This.allbinaryLayer.getWidth);
   end getX2;

   function getY2 (This : in out ViewPosition) return Integer is
   begin
        return (ViewPosition'Class (This).getY) + (This.allbinaryLayer.getHeight);
   end getY2;

   function getZ2 (This : in out ViewPosition) return Integer is
   begin
        return Integer (((ViewPosition'Class (This).getZ) + (This.allbinaryLayer.getDepth)));
   end getZ2;

   procedure setAllbinaryLayer (This : in out ViewPosition; allbinaryLayer_Param : access Java_Object'Class) is
      allbinaryLayer : constant Java_Object_Access := Java_Object_Access (allbinaryLayer_Param);
   begin
        This.allbinaryLayer := AllBinaryLayer_Access (allbinaryLayer);
   end setAllbinaryLayer;

   procedure setAllbinaryLayer (This : in out ViewPosition; Value : Unbounded_String) is
   begin
      ViewPosition'Class (This).setAllbinaryLayer (Java_Box (Value));
   end setAllbinaryLayer;

end org.allbinary.view.ViewPosition_Package;


