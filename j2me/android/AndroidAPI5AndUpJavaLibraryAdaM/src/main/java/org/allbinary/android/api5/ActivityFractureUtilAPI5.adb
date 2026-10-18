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


package body org.allbinary.android.api5.ActivityFractureUtilAPI5_Package is

   procedure Initialize_Fields (This : in out ActivityFractureUtilAPI5'Class) is
   begin
      null;
      This.FEATURE_TOUCHSCREEN_MULTITOUCH := To_Unbounded_String ("android.hardware.touchscreen.multitouch");
      This.FEATURE_TOUCHSCREEN := To_Unbounded_String ("android.hardware.touchscreen");
      This.FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT := To_Unbounded_String ("android.hardware.touchscreen.multitouch.distinct");
   end Initialize_Fields;

   procedure Initialize (This : in out ActivityFractureUtilAPI5'Class) is
   begin
      ActivityFractureUtilAPI1_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ActivityFractureUtilAPI5_Access is
      This : constant ActivityFractureUtilAPI5_Access := new ActivityFractureUtilAPI5;
   begin
      ActivityFractureUtilAPI5_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ActivityFractureUtilAPI5_Access is
   begin
        return ActivityFractureUtilAPI5_Package.instance5;
   end getInstance;

   procedure process (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
      touchScreenFactory : TouchScreenFactory_Access;
      touchScreenTypeFactory : TouchScreenTypeFactory_Access;
      commonStrings : CommonStrings_Access;
   begin
        touchScreenFactory := TouchScreenFactory_Package.getInstance;
        touchScreenTypeFactory := TouchScreenTypeFactory_Package.getInstance;
        touchScreenFactory.setTouch (ActivityFractureUtilAPI5'Class (This).isTouch (activity));
        touchScreenFactory.setMultiTouch (ActivityFractureUtilAPI5'Class (This).isMultiTouch (activity));
        touchScreenFactory.setMultiTouchDistinct (ActivityFractureUtilAPI5'Class (This).isMultiTouchDistinct (activity));
        touchScreenTypeFactory.update (activity);
        commonStrings := CommonStrings_Package.getInstance;
        PreLogUtil_Package.put (touchScreenFactory.toString, ActivityFractureUtilAPI5_Access'(This'Unchecked_Access), commonStrings.PROCESS);
   end process;

   function isTouch (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class) return Boolean is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
        return ActivityFractureUtilAPI5'Class (This).isFeature (activity, This.FEATURE_TOUCHSCREEN);
   end isTouch;

   function isMultiTouch (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class) return Boolean is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
        return ActivityFractureUtilAPI5'Class (This).isFeature (activity, This.FEATURE_TOUCHSCREEN_MULTITOUCH);
   end isMultiTouch;

   function isMultiTouchDistinct (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class) return Boolean is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
        return ActivityFractureUtilAPI5'Class (This).isFeature (activity, This.FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT);
   end isMultiTouchDistinct;

   function isFeature (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class; property : Unbounded_String) return Boolean is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
        return activity.getPackageManager.hasSystemFeature (property);
   end isFeature;

   procedure isTouch (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class) is
      Java_Result : constant Boolean := ActivityFractureUtilAPI5'Class (This).isTouch (activity_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTouch;

   procedure isMultiTouch (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class) is
      Java_Result : constant Boolean := ActivityFractureUtilAPI5'Class (This).isMultiTouch (activity_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMultiTouch;

   procedure isMultiTouchDistinct (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class) is
      Java_Result : constant Boolean := ActivityFractureUtilAPI5'Class (This).isMultiTouchDistinct (activity_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMultiTouchDistinct;

   procedure isFeature (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class; property : Unbounded_String) is
      Java_Result : constant Boolean := ActivityFractureUtilAPI5'Class (This).isFeature (activity_Param, property);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFeature;

begin
   null;
   instance5 := ActivityFractureUtilAPI5_Package.Create;

end org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;


