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


package body org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package is

   procedure Initialize_Fields (This : in out BaseDropCellPositionGenerator'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseDropCellPositionGenerator'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseDropCellPositionGenerator_Access is
      This : constant BaseDropCellPositionGenerator_Access := new BaseDropCellPositionGenerator;
   begin
      BaseDropCellPositionGenerator_Package.Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out BaseDropCellPositionGenerator) return Unbounded_String is
   begin
        return To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
   end getName;

   --  throws Exception
   procedure update (This : in out BaseDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        null;
   end update;

   --  throws Exception
   function isDropAllowedAt (This : in out BaseDropCellPositionGenerator; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        return True;
   end isDropAllowedAt;

   --  throws Exception
   procedure processTick (This : in out BaseDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        null;
   end processTick;

   procedure isDropAllowedAt (This : in out BaseDropCellPositionGenerator; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := BaseDropCellPositionGenerator'Class (This).isDropAllowedAt (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDropAllowedAt;

end org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package;


