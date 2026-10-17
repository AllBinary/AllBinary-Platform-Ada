-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out SelectedRTSLayersPlayerUpgradeGameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectedRTSLayersPlayerUpgradeGameInputProcessor'Class; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) is
      selectedRTSLayersPlayerGameInput : constant SelectedRTSLayersPlayerGameInput_Access := SelectedRTSLayersPlayerGameInput_Access (selectedRTSLayersPlayerGameInput_Param);
   begin
        SelectedRTSLayersPlayerGameInputProcessor_Package.Initialize (This, selectedRTSLayersPlayerGameInput);
   end Initialize;

   function Create (selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) return SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access is
      This : constant SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access := new SelectedRTSLayersPlayerUpgradeGameInputProcessor;
   begin
      SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package.Initialize (This.all, selectedRTSLayersPlayerGameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out SelectedRTSLayersPlayerUpgradeGameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        This.selectedRTSLayersPlayerGameInput.upgrade;
   end processEvent;

end org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package;


