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


package body org.allbinary.view.ViewPositionBase_Package is

   procedure Initialize_Fields (This : in out ViewPositionBase'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ViewPositionBase'Class; x : Integer; y : Integer; z : Integer) is
   begin
        GPoint_Package.Initialize (This, x, y, z);
   end Initialize;

   function Create (x : Integer; y : Integer; z : Integer) return ViewPositionBase_Access is
      This : constant ViewPositionBase_Access := new ViewPositionBase;
   begin
      ViewPositionBase_Package.Initialize (This.all, x, y, z);
      return This;
   end Create;

   function getX2 (This : in out ViewPositionBase) return Integer is
   begin
        return ViewPositionBase'Class (This).getX;
   end getX2;

   function getY2 (This : in out ViewPositionBase) return Integer is
   begin
        return ViewPositionBase'Class (This).getY;
   end getY2;

   function getZ2 (This : in out ViewPositionBase) return Integer is
   begin
        return ViewPositionBase'Class (This).getZ;
   end getZ2;

   procedure setAllbinaryLayer (This : in out ViewPositionBase; allbinaryLayer_Param : access Java_Object'Class) is
      allbinaryLayer : constant Java_Object_Access := Java_Object_Access (allbinaryLayer_Param);
   begin
        null;
   end setAllbinaryLayer;

begin
   null;
   NULL_VIEW_POSITION := ViewPositionBase_Package.Create (0, 0, 0);

end org.allbinary.view.ViewPositionBase_Package;


