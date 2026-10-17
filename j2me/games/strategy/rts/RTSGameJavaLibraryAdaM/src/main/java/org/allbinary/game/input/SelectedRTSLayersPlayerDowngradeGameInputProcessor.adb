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


package body org.allbinary.game.input.SelectedRTSLayersPlayerDowngradeGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out SelectedRTSLayersPlayerDowngradeGameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectedRTSLayersPlayerDowngradeGameInputProcessor'Class; selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access) is
   begin
        SelectedRTSLayersPlayerGameInputProcessor_Package.Initialize (This, selectedRTSLayersPlayerGameInput);
   end Initialize;

   function Create (selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access) return SelectedRTSLayersPlayerDowngradeGameInputProcessor_Access is
      This : constant SelectedRTSLayersPlayerDowngradeGameInputProcessor_Access := new SelectedRTSLayersPlayerDowngradeGameInputProcessor;
   begin
      SelectedRTSLayersPlayerDowngradeGameInputProcessor_Package.Initialize (This.all, selectedRTSLayersPlayerGameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out SelectedRTSLayersPlayerDowngradeGameInputProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.selectedRTSLayersPlayerGameInput.downgrade;
   end processEvent;

end org.allbinary.game.input.SelectedRTSLayersPlayerDowngradeGameInputProcessor_Package;


