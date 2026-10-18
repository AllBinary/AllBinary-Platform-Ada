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


with org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package; use org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package; use org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.media.AllBinaryNoVibration_Package; use org.allbinary.media.AllBinaryNoVibration_Package;
with org.allbinary.media.AllBinaryVibration_Package; use org.allbinary.media.AllBinaryVibration_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;

package body org.allbinary.game.layer.AdvancedRTSProperties_Package is

   package NoShakeAnimationListener_Package renames Standard.org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package;
   package ShakeAnimationListenerFactory_Package renames Standard.org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package AllBinaryNoVibration_Package renames Standard.org.allbinary.media.AllBinaryNoVibration_Package;
   package AllBinaryVibration_Package renames Standard.org.allbinary.media.AllBinaryVibration_Package;
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

   procedure Initialize (This : in out AdvancedRTSProperties'Class; shakeListener_Param : access ShakeAnimationListener_Package.ShakeAnimationListener'Class; vibration_Param : access AllBinaryVibrationME_Package.AllBinaryVibrationME'Class; duration : Integer; waypointBehaviorBase_Param : access TickableInterface_Package.TickableInterface'Class) is
      shakeListener : constant ShakeAnimationListener_Access := ShakeAnimationListener_Access (shakeListener_Param);
      vibration : constant AllBinaryVibrationME_Access := AllBinaryVibrationME_Access (vibration_Param);
      waypointBehaviorBase : constant TickableInterface_Access := TickableInterface_Access (waypointBehaviorBase_Param);
   begin
      Initialize_Fields (This);
        This.shakeListener := shakeListener;
        This.vibration := vibration;
        This.duration := duration;
        This.waypointBehaviorBase := waypointBehaviorBase;
   end Initialize;

   function Create (shakeListener_Param : access ShakeAnimationListener_Package.ShakeAnimationListener'Class; vibration_Param : access AllBinaryVibrationME_Package.AllBinaryVibrationME'Class; duration : Integer; waypointBehaviorBase_Param : access TickableInterface_Package.TickableInterface'Class) return AdvancedRTSProperties_Access is
      This : constant AdvancedRTSProperties_Access := new AdvancedRTSProperties;
   begin
      AdvancedRTSProperties_Package.Initialize (This.all, shakeListener_Param, vibration_Param, duration, waypointBehaviorBase_Param);
      return This;
   end Create;

end org.allbinary.game.layer.AdvancedRTSProperties_Package;


