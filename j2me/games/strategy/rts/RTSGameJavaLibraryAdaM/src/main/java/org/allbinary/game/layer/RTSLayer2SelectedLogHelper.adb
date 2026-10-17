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


package body org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package is

   procedure Initialize_Fields (This : in out RTSLayer2SelectedLogHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.TRACK_TO_FIRE_OR_MOVE := To_Unbounded_String ("trackTo:fireOrMove");
      This.BUILDING_CHASE := To_Unbounded_String ("buildingChase");
   end Initialize_Fields;

   procedure Initialize (This : in out RTSLayer2SelectedLogHelper'Class) is
   begin
      RTSLayer2LogHelper_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return RTSLayer2SelectedLogHelper_Access is
      This : constant RTSLayer2SelectedLogHelper_Access := new RTSLayer2SelectedLogHelper;
   begin
      RTSLayer2SelectedLogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSLayer2SelectedLogHelper_Access is
   begin
        return RTSLayer2SelectedLogHelper_Package.instanceC;
   end getInstance;

   procedure steeringUp (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Up")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.TRACK_TO_FIRE_OR_MOVE);
   end steeringUp;

   procedure steeringFireOrStop (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Fire/All Stop")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.TRACK_TO_FIRE_OR_MOVE);
   end steeringFireOrStop;

   procedure buildingAbove (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" Building Above")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingAbove;

   procedure buildingChaseLeft (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Going Left: ")).appendint (angle).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingChaseLeft;

   procedure buildingChaseRight (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Going Right: ")).appendint (angle).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingChaseRight;

   procedure buildingDown (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" Building Below")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingDown;

   procedure buildingChaseDown (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Going Down: ")).appendint (angle).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingChaseDown;

   procedure buildingChaseUp (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Going Up: ")).appendint (angle).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingChaseUp;

   procedure buildingLeft (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" Building Left")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingLeft;

   procedure buildingRight (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" Building Right")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingRight;

begin
   null;
   instanceC := RTSLayer2SelectedLogHelper_Package.Create;

end org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package;


