--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

package body org.allbinary.game.layer.Driver_Package is

   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   procedure Initialize_Fields (This : in out Driver'Class) is
   begin
      null;
      This.turnSpeed := SmallIntegerSingletonFactory_Package.getInstance.getAt (0);
      This.trackPathSelectionSkill := SmallIntegerSingletonFactory_Package.getInstance.getAt (0);
      
   end Initialize_Fields;


   procedure Initialize (This : in out Driver'Class; turnSpeed : Integer; trackPathSelectionSkill : Integer; aggression_Param : access Aggression_Package.Aggression'Class) is
      aggression : constant Aggression_Access := Aggression_Access (aggression_Param);
   begin
      Initialize_Fields (This);
        Driver'Class (This).setTurnSpeed (turnSpeed);
        Driver'Class (This).setTrackPathSelectionSkill (trackPathSelectionSkill);
        This.aggression := aggression;
   end Initialize;

   function Create (turnSpeed : Integer; trackPathSelectionSkill : Integer; aggression_Param : access Aggression_Package.Aggression'Class) return Driver_Access is
      This : constant Driver_Access := new Driver;
   begin
      Driver_Package.Initialize (This.all, turnSpeed, trackPathSelectionSkill, aggression_Param);
      return This;
   end Create;

   function getTurnSpeed (This : in out Driver) return Integer is
   begin
        return This.turnSpeed;
   end getTurnSpeed;

   procedure setTurnSpeed (This : in out Driver; turnSpeed : Integer) is
   begin
        This.turnSpeed := turnSpeed;
   end setTurnSpeed;

   function getTrackPathSelectionSkill (This : in out Driver) return Integer is
   begin
        return This.trackPathSelectionSkill;
   end getTrackPathSelectionSkill;

   procedure setTrackPathSelectionSkill (This : in out Driver; trackPathSelectionSkill : Integer) is
   begin
        This.trackPathSelectionSkill := trackPathSelectionSkill;
   end setTrackPathSelectionSkill;

   function getAggression (This : in out Driver) return Aggression_Access is
   begin
        return This.aggression;
   end getAggression;

   procedure setAggression (This : in out Driver; aggression_Param : access Aggression_Package.Aggression'Class) is
      aggression : constant Aggression_Access := Aggression_Access (aggression_Param);
   begin
        This.aggression := aggression;
   end setAggression;

begin
   null;
   NULL_DRIVER := Driver_Package.Create (SmallIntegerSingletonFactory_Package.getInstance.getAt (0), SmallIntegerSingletonFactory_Package.getInstance.getAt (0), Aggression_Package.Create (SmallIntegerSingletonFactory_Package.getInstance.getAt (0), SmallIntegerSingletonFactory_Package.getInstance.getAt (0), SmallIntegerSingletonFactory_Package.getInstance.getAt (0)));

end org.allbinary.game.layer.Driver_Package;


