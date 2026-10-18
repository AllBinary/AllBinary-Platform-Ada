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



package body org.allbinary.emulator.device.TrueTypeFontUtilBase_Package is

   procedure Initialize_Fields (This : in out TrueTypeFontUtilBase'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TrueTypeFontUtilBase'Class; scale : Integer) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (scale : Integer) return TrueTypeFontUtilBase_Access is
      This : constant TrueTypeFontUtilBase_Access := new TrueTypeFontUtilBase;
   begin
      TrueTypeFontUtilBase_Package.Initialize (This.all, scale);
      return This;
   end Create;

   function getAsTextureSize (This : in out TrueTypeFontUtilBase; textureSize : Integer) return Integer is
   begin
        return -(1);
   end getAsTextureSize;

   function getCellSize (This : in out TrueTypeFontUtilBase; cellSize : Integer) return Integer is
   begin
        return -(1);
   end getCellSize;

   procedure getAsTextureSize (This : in out TrueTypeFontUtilBase; textureSize : Integer) is
      Java_Result : constant Integer := TrueTypeFontUtilBase'Class (This).getAsTextureSize (textureSize => textureSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAsTextureSize;

   procedure getCellSize (This : in out TrueTypeFontUtilBase; cellSize : Integer) is
      Java_Result : constant Integer := TrueTypeFontUtilBase'Class (This).getCellSize (cellSize => cellSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellSize;

end org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;


