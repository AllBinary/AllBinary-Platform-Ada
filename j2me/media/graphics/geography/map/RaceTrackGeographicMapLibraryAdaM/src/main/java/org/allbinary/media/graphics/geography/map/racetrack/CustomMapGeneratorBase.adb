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


package body org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package is

   procedure Initialize_Fields (This : in out CustomMapGeneratorBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CustomMapGeneratorBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CustomMapGeneratorBase_Access is
      This : constant CustomMapGeneratorBase_Access := new CustomMapGeneratorBase;
   begin
      CustomMapGeneratorBase_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure copyMapIntoCustomMap (This : in out CustomMapGeneratorBase) is
   begin
        null;
   end copyMapIntoCustomMap;

   function getCustomMapArray (This : in out CustomMapGeneratorBase) return Integer_Array_Access_Array_Access is
   begin
        return NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY;
   end getCustomMapArray;

   --  throws Exception
   function getCustomType (This : in out CustomMapGeneratorBase; column : Integer; row : Integer; currentType : Integer) return Integer is
   begin
        return -(1);
   end getCustomType;

   procedure getCustomType (This : in out CustomMapGeneratorBase; column : Integer; row : Integer; currentType : Integer) is
      Java_Result : constant Integer := CustomMapGeneratorBase'Class (This).getCustomType (column, row, currentType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCustomType;

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;


