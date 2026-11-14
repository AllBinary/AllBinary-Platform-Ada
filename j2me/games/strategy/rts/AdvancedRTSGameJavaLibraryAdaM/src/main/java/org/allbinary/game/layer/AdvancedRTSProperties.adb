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
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package; use org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References;
with org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package; use org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.game.tick.TickableInterface_Package_References;
with org.allbinary.media.AllBinaryNoVibration_Package; use org.allbinary.media.AllBinaryNoVibration_Package;
with org.allbinary.media.AllBinaryVibration_Package; use org.allbinary.media.AllBinaryVibration_Package;
with org.allbinary.media.AllBinaryVibrationME_Package; use org.allbinary.media.AllBinaryVibrationME_Package;
with org.allbinary.media.AllBinaryVibrationME_Package_References;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.animation.transition.shake.ShakeEvent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.layer.AdvancedRTSProperties_Package is

   package NoShakeAnimationListener_Package renames Standard.org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package;
   package ShakeAnimationListenerFactory_Package renames Standard.org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package AllBinaryNoVibration_Package renames Standard.org.allbinary.media.AllBinaryNoVibration_Package;
   package AllBinaryVibration_Package renames Standard.org.allbinary.media.AllBinaryVibration_Package;
   subtype ShakeAnimationListener_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype TickableInterface_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access;
   function "=" (Left, Right : TickableInterface_Access) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array;
   function "=" (Left, Right : TickableInterface_Access_Array) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access;
   function "=" (Left, Right : TickableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array_Access_Array is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TickableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array_Access_Array_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TickableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype AllBinaryVibrationME_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access;
   function "=" (Left, Right : AllBinaryVibrationME_Access) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array_Access_Array is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array_Access_Array) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array_Access_Array_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
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
        return AdvancedRTSProperties_Package.Create (ShakeAnimationListenerFactory_Package.getInstance, AllBinaryVibration_Package.getInstance, (Integer (GameConfigurationCentral_Package.getInstance.VIBRATION.getValue)) * (100), WaypointBehaviorBase_Package.Create);
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


