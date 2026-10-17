-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify


package body org.allbinary.game.layer.AdvancedRTSLayerUtil_Package is

   procedure Initialize_Fields (This : in out AdvancedRTSLayerUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AdvancedRTSLayerUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AdvancedRTSLayerUtil_Access is
      This : constant AdvancedRTSLayerUtil_Access := new AdvancedRTSLayerUtil;
   begin
      AdvancedRTSLayerUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AdvancedRTSLayerUtil_Access is
   begin
        return AdvancedRTSLayerUtil_Package.instance;
   end getInstance;

   function createFakeRTSLayerHashtable (This : in out AdvancedRTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap'Class) return ABHashtable_Access is
      baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap_Access := BaseRaceTrackGeographicMap_Access (baseRaceTrackGeographicMap_Param);
      hashtable : ABHashtable_Access;
   begin
        hashtable := RTSLayerUtil_Package.getInstance.createFakeRTSLayerHashtable (baseRaceTrackGeographicMap);
        hashtable.put (WorkWaypoint_Package.ID, SmallIntegerSingletonFactory_Package.getInstance.getAt (50));
        return hashtable;
   end createFakeRTSLayerHashtable;

   procedure createFakeRTSLayerHashtable (This : in out AdvancedRTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap'Class) is
      Java_Result : constant ABHashtable_Access := AdvancedRTSLayerUtil'Class (This).createFakeRTSLayerHashtable (baseRaceTrackGeographicMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFakeRTSLayerHashtable;

begin
   null;
   instance := AdvancedRTSLayerUtil_Package.Create;

end org.allbinary.game.layer.AdvancedRTSLayerUtil_Package;


