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


with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;

package body org.allbinary.game.layer.NullRTSLayer_Package is

   package NullRTSFormInputFactory_Package renames Standard.org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
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
      NullRTSLayer_Package.Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out NullRTSLayer) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getName;

   --  throws Exception
   procedure processInput (This : in out NullRTSLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
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
        return null;
   end getGameNotificationHud;

   function getCurrentScrollSelectionForm (This : in out NullRTSLayer) return ScrollSelectionForm_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCurrentScrollSelectionForm;

   procedure setCurrentScrollSelectionForm (This : in out NullRTSLayer; currentScrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) is
      currentScrollSelectionForm : constant ScrollSelectionForm_Access := ScrollSelectionForm_Access (currentScrollSelectionForm_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setCurrentScrollSelectionForm;

   function getBuildingScrollSelectionForm (This : in out NullRTSLayer) return ScrollSelectionForm_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getBuildingScrollSelectionForm;

   function getPlayerGameInput (This : in out NullRTSLayer) return PlayerGameInput_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getPlayerGameInput;

   procedure onEvent (This : in out NullRTSLayer; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end onEvent;

   --  throws Exception
   procedure onDestroyed (This : in out NullRTSLayer; destroyedEvent_Param : access DestroyedEvent_Package.DestroyedEvent'Class) is
      destroyedEvent : constant DestroyedEvent_Access := DestroyedEvent_Access (destroyedEvent_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end onDestroyed;

   --  throws Exception
   procedure processTick (This : in out NullRTSLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end processTick;

   function getCapital (This : in out NullRTSLayer) return Capital_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCapital;

   function getRTSFormInput (This : in out NullRTSLayer) return RTSFormInput_Access is
   begin
        return NullRTSFormInputFactory_Package.getInstance;
   end getRTSFormInput;

   procedure add (This : in out NullRTSLayer; sound_Param : access Sound_Package.Sound'Class) is
      sound : constant Sound_Access := Sound_Access (sound_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end add;

   function getPlayerOwnedRTSLayers (This : in out NullRTSLayer) return PlayerOwnedRTSLayers_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getPlayerOwnedRTSLayers;

   function implmentsArtificialIntelligenceCompositeInterface (This : in out NullRTSLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end implmentsArtificialIntelligenceCompositeInterface;

begin
   null;
   NULL_RTS_LAYER := NullRTSLayer_Package.Create;

end org.allbinary.game.layer.NullRTSLayer_Package;


