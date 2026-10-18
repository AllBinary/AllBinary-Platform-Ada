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


with org.allbinary.game.input.GameInputLayerManager_Package; use org.allbinary.game.input.GameInputLayerManager_Package;
with org.allbinary.game.input.GameInputInterface_Package; use org.allbinary.game.input.GameInputInterface_Package;

package body org.allbinary.game.input.GameInputLayerProcessor_Package is

   procedure Initialize_Fields (This : in out GameInputLayerProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameInputLayerProcessor'Class) is
   begin
        LayerProcessor_Package.Initialize (This, GameInputLayerManager_Package.Create);
   end Initialize;

   function Create return GameInputLayerProcessor_Access is
      This : constant GameInputLayerProcessor_Access := new GameInputLayerProcessor;
   begin
      GameInputLayerProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processAt (This : in out GameInputLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      gameInputInterface : GameInputInterface_Access;
   begin
        gameInputInterface := GameInputInterface_Access (layerInterface);
        gameInputInterface.processInput (allBinaryLayerManager);
   end processAt;

   function isProcessorLayer (This : in out GameInputLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if layerInterface.implmentsGameInputInterface then
            return True;
        else
            return False;
        end if;
   end isProcessorLayer;

   procedure isProcessorLayer (This : in out GameInputLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := GameInputLayerProcessor'Class (This).isProcessorLayer (layerInterface_Param => layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isProcessorLayer;

end org.allbinary.game.input.GameInputLayerProcessor_Package;


