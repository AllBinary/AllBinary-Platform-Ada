-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.layer.RTSLayer2LogHelper_Package is

   procedure Initialize_Fields (This : in out RTSLayer2LogHelper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RTSLayer2LogHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RTSLayer2LogHelper_Access is
      This : constant RTSLayer2LogHelper_Access := new RTSLayer2LogHelper;
   begin
      RTSLayer2LogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSLayer2LogHelper_Access is
   begin
        return RTSLayer2LogHelper_Package.instance;
   end getInstance;

   procedure steeringUp (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        null;
   end steeringUp;

   procedure steeringFireOrStop (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        null;
   end steeringFireOrStop;

   procedure buildingAbove (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        null;
   end buildingAbove;

   procedure buildingChaseLeft (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        null;
   end buildingChaseLeft;

   procedure buildingChaseRight (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        null;
   end buildingChaseRight;

   procedure buildingDown (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        null;
   end buildingDown;

   procedure buildingChaseDown (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        null;
   end buildingChaseDown;

   procedure buildingChaseUp (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        null;
   end buildingChaseUp;

   procedure buildingLeft (This : in out RTSLayer2LogHelper) is
   begin
        null;
   end buildingLeft;

   procedure buildingRight (This : in out RTSLayer2LogHelper) is
   begin
        null;
   end buildingRight;

begin
   null;
   instance := RTSLayer2LogHelper_Package.Create;

end org.allbinary.game.layer.RTSLayer2LogHelper_Package;


