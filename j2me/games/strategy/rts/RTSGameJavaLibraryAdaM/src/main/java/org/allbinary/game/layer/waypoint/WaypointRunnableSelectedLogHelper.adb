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


package body org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package is

   procedure Initialize_Fields (This : in out WaypointRunnableSelectedLogHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointRunnableSelectedLogHelper'Class) is
   begin
      WaypointRunnableLogHelper_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointRunnableSelectedLogHelper_Access is
      This : constant WaypointRunnableSelectedLogHelper_Access := new WaypointRunnableSelectedLogHelper;
   begin
      WaypointRunnableSelectedLogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return WaypointRunnableSelectedLogHelper_Access is
   begin
        return WaypointRunnableSelectedLogHelper_Package.instanceC;
   end getInstance;

   procedure start (This : in out WaypointRunnableSelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (This.commonStrings.START_RUNNABLE).toString, WaypointRunnableSelectedLogHelper_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end start;

   procedure end_Id (This : in out WaypointRunnableSelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (This.commonStrings.END_RUNNABLE).toString, WaypointRunnableSelectedLogHelper_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end end_Id;

begin
   null;
   instanceC := WaypointRunnableSelectedLogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package;


