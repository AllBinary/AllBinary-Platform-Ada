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
      Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out BaseDropCellPositionGenerator) return Unbounded_String is
   begin
        return To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
   end getName;

   --  throws Exception
   procedure update (This : in out BaseDropCellPositionGenerator; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access; geographicMapInterface : BasicGeographicMap_Access) is
   begin
        null;
   end update;

   --  throws Exception
   function isDropAllowedAt (This : in out BaseDropCellPositionGenerator; geographicMapCellPosition : GeographicMapCellPosition_Access) return Boolean is
   begin
        return True;
   end isDropAllowedAt;

   --  throws Exception
   procedure processTick (This : in out BaseDropCellPositionGenerator; allBinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        null;
   end processTick;

   procedure getName (This : in out BaseDropCellPositionGenerator) is
      Java_Result : constant Unbounded_String := BaseDropCellPositionGenerator'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure isDropAllowedAt (This : in out BaseDropCellPositionGenerator; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Boolean := BaseDropCellPositionGenerator'Class (This).isDropAllowedAt (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDropAllowedAt;

end org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package;


