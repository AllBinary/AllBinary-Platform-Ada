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


package body org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out SelectedRTSLayersPlayerGameInputProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SelectedRTSLayersPlayerGameInputProcessor'Class; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput'Class) is
      selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access := SelectedRTSLayersPlayerGameInput_Access (selectedRTSLayersPlayerGameInput_Param);
   begin
      GameInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.selectedRTSLayersPlayerGameInput := selectedRTSLayersPlayerGameInput;
   end Initialize;

   function Create (selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput'Class) return SelectedRTSLayersPlayerGameInputProcessor_Access is
      This : constant SelectedRTSLayersPlayerGameInputProcessor_Access := new SelectedRTSLayersPlayerGameInputProcessor;
   begin
      SelectedRTSLayersPlayerGameInputProcessor_Package.Initialize (This.all, selectedRTSLayersPlayerGameInput_Param);
      return This;
   end Create;

end org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package;


