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


package body org.allbinary.game.layer.unit.UnitWaypointStrings_Package is

   procedure Initialize_Fields (This : in out UnitWaypointStrings'Class) is
   begin
      null;
      This.WANDERING := To_Unbounded_String ("Order?");
      This.THINKING := To_Unbounded_String ("Thinking");
      This.THINKING_ABOUT_TARGET := To_Unbounded_String ("Hmmm");
      This.TARGET := To_Unbounded_String ("Target");
      This.KILL := To_Unbounded_String ("Kill!");
      This.STOP := To_Unbounded_String ("Stop");
      This.WAYPOINT_DESTROYED_SHORT := To_Unbounded_String ("Uh Oh");
      This.WAYPOINT_DESTROYED := To_Unbounded_String ("Waypoint Destroyed");
      This.ALL_VISITED_SHORT := To_Unbounded_String ("Arrived");
      This.ALL_VISITED := To_Unbounded_String ("All Visited");
      This.ALREADY_THERE_SHORT := To_Unbounded_String ("Again?");
      This.ALREADY_THERE := To_Unbounded_String ("Already There");
      This.NEXT_PATH_NODE := Java_Image (CommonLabels_Package.getInstance.NEXT) & To_Unbounded_String (" Path Node");
   end Initialize_Fields;

   procedure Initialize (This : in out UnitWaypointStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return UnitWaypointStrings_Access is
      This : constant UnitWaypointStrings_Access := new UnitWaypointStrings;
   begin
      UnitWaypointStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return UnitWaypointStrings_Access is
   begin
        return UnitWaypointStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := UnitWaypointStrings_Package.Create;

end org.allbinary.game.layer.unit.UnitWaypointStrings_Package;


