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


package body org.allbinary.game.layer.NullRTSLayer_Package is

   procedure Initialize_Fields (This : in out NullRTSLayer'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullRTSLayer'Class) is
   begin
      NullPathFindingLayer_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NullRTSLayer_Access is
      This : constant NullRTSLayer_Access := new NullRTSLayer;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out NullRTSLayer) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getName;

   --  throws Exception
   procedure processInput (This : in out NullRTSLayer; layerManager : AllBinaryLayerManager_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end processInput;

   procedure initInputProcessors (This : in out NullRTSLayer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end initInputProcessors;

   function getGameNotificationHud (This : in out NullRTSLayer) return GameNotificationHud_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getGameNotificationHud;

   function getCurrentScrollSelectionForm (This : in out NullRTSLayer) return ScrollSelectionForm_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getCurrentScrollSelectionForm;

   procedure setCurrentScrollSelectionForm (This : in out NullRTSLayer; currentScrollSelectionForm : ScrollSelectionForm_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setCurrentScrollSelectionForm;

   function getBuildingScrollSelectionForm (This : in out NullRTSLayer) return ScrollSelectionForm_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getBuildingScrollSelectionForm;

   function getPlayerGameInput (This : in out NullRTSLayer) return PlayerGameInput_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPlayerGameInput;

   procedure onEvent (This : in out NullRTSLayer; eventObject : AllBinaryEventObject_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end onEvent;

   --  throws Exception
   procedure onDestroyed (This : in out NullRTSLayer; destroyedEvent : DestroyedEvent_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end onDestroyed;

   --  throws Exception
   procedure processTick (This : in out NullRTSLayer; allBinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end processTick;

   function getCapital (This : in out NullRTSLayer) return Capital_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getCapital;

   function getRTSFormInput (This : in out NullRTSLayer) return RTSFormInput_Access is
   begin
        return NullRTSFormInputFactory_Package.getInstance;
   end getRTSFormInput;

   procedure add (This : in out NullRTSLayer; sound : Sound_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end add;

   function getPlayerOwnedRTSLayers (This : in out NullRTSLayer) return PlayerOwnedRTSLayers_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPlayerOwnedRTSLayers;

   function implmentsArtificialIntelligenceCompositeInterface (This : in out NullRTSLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end implmentsArtificialIntelligenceCompositeInterface;

   procedure getName (This : in out NullRTSLayer) is
      Java_Result : constant Unbounded_String := NullRTSLayer'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getGameNotificationHud (This : in out NullRTSLayer) is
      Java_Result : constant GameNotificationHud_Access := NullRTSLayer'Class (This).getGameNotificationHud;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameNotificationHud;

   procedure getCurrentScrollSelectionForm (This : in out NullRTSLayer) is
      Java_Result : constant ScrollSelectionForm_Access := NullRTSLayer'Class (This).getCurrentScrollSelectionForm;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentScrollSelectionForm;

   procedure getBuildingScrollSelectionForm (This : in out NullRTSLayer) is
      Java_Result : constant ScrollSelectionForm_Access := NullRTSLayer'Class (This).getBuildingScrollSelectionForm;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBuildingScrollSelectionForm;

   procedure getPlayerGameInput (This : in out NullRTSLayer) is
      Java_Result : constant PlayerGameInput_Access := NullRTSLayer'Class (This).getPlayerGameInput;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPlayerGameInput;

   procedure getCapital (This : in out NullRTSLayer) is
      Java_Result : constant Capital_Access := NullRTSLayer'Class (This).getCapital;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCapital;

   procedure getRTSFormInput (This : in out NullRTSLayer) is
      Java_Result : constant RTSFormInput_Access := NullRTSLayer'Class (This).getRTSFormInput;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRTSFormInput;

   procedure getPlayerOwnedRTSLayers (This : in out NullRTSLayer) is
      Java_Result : constant PlayerOwnedRTSLayers_Access := NullRTSLayer'Class (This).getPlayerOwnedRTSLayers;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPlayerOwnedRTSLayers;

   procedure implmentsArtificialIntelligenceCompositeInterface (This : in out NullRTSLayer) is
      Java_Result : constant Boolean := NullRTSLayer'Class (This).implmentsArtificialIntelligenceCompositeInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsArtificialIntelligenceCompositeInterface;

begin
   null;
   NULL_RTS_LAYER := NullRTSLayer_Package.Create;

end org.allbinary.game.layer.NullRTSLayer_Package;


