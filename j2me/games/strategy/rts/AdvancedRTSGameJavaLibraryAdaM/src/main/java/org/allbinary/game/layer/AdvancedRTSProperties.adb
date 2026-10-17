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


package body org.allbinary.game.layer.AdvancedRTSProperties_Package is

   procedure Initialize_Fields (This : in out AdvancedRTSProperties'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   function createPropertiesSimulated return AdvancedRTSProperties_Access is
   begin
        return AdvancedRTSProperties_Package.Create (NoShakeAnimationListener_Package.NO_SHAKE_ANIMATION_LISTENER, AllBinaryNoVibration_Package.NO_VIBRATION, 0, WaypointBehaviorBase_Package.Create);
   end createPropertiesSimulated;

   function createProperties return AdvancedRTSProperties_Access is
   begin
        return AdvancedRTSProperties_Package.Create (ShakeAnimationListenerFactory_Package.getInstance, AllBinaryVibration_Package.getInstance, (GameConfigurationCentral_Package.getInstance.VIBRATION.getValue.intValue) * (100), WaypointBehaviorBase_Package.Create);
   end createProperties;

   procedure Initialize (This : in out AdvancedRTSProperties'Class; shakeListener : ShakeAnimationListener_Access; vibration : AllBinaryVibrationME_Access; duration : Integer; waypointBehaviorBase : TickableInterface_Access) is
   begin
      Initialize_Fields (This);
        This.shakeListener := shakeListener;
        This.vibration := vibration;
        This.duration := duration;
        This.waypointBehaviorBase := waypointBehaviorBase;
   end Initialize;

   function Create (shakeListener : ShakeAnimationListener_Access; vibration : AllBinaryVibrationME_Access; duration : Integer; waypointBehaviorBase : TickableInterface_Access) return AdvancedRTSProperties_Access is
      This : constant AdvancedRTSProperties_Access := new AdvancedRTSProperties;
   begin
      Initialize (This.all, shakeListener, vibration, duration, waypointBehaviorBase);
      return This;
   end Create;

   procedure createPropertiesSimulated is
      Java_Result : constant AdvancedRTSProperties_Access := createPropertiesSimulated;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPropertiesSimulated;

   procedure createProperties is
      Java_Result : constant AdvancedRTSProperties_Access := createProperties;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createProperties;

end org.allbinary.game.layer.AdvancedRTSProperties_Package;


