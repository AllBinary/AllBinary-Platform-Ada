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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ActivityFractureUtilAPI5_Access is
   begin
        return ActivityFractureUtilAPI5_Package.instance5;
   end getInstance;

   procedure process (This : in out ActivityFractureUtilAPI5; activity : Activity_Access) is
      touchScreenFactory : TouchScreenFactory_Access;
      touchScreenTypeFactory : TouchScreenTypeFactory_Access;
      commonStrings : CommonStrings_Access;
   begin
        touchScreenFactory := TouchScreenFactory_Package.getInstance;
        touchScreenTypeFactory := TouchScreenTypeFactory_Package.getInstance;
        touchScreenFactory.setTouch (This.isTouch (activity));
        touchScreenFactory.setMultiTouch (This.isMultiTouch (activity));
        touchScreenFactory.setMultiTouchDistinct (This.isMultiTouchDistinct (activity));
        touchScreenTypeFactory.update (activity);
        commonStrings := CommonStrings_Package.getInstance;
        PreLogUtil_Package.put (touchScreenFactory.toString, This'Unchecked_Access, commonStrings.PROCESS);
   end process;

   function isTouch (This : in out ActivityFractureUtilAPI5; activity : Activity_Access) return Boolean is
   begin
        return This.isFeature (activity, This.FEATURE_TOUCHSCREEN);
   end isTouch;

   function isMultiTouch (This : in out ActivityFractureUtilAPI5; activity : Activity_Access) return Boolean is
   begin
        return This.isFeature (activity, This.FEATURE_TOUCHSCREEN_MULTITOUCH);
   end isMultiTouch;

   function isMultiTouchDistinct (This : in out ActivityFractureUtilAPI5; activity : Activity_Access) return Boolean is
   begin
        return This.isFeature (activity, This.FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT);
   end isMultiTouchDistinct;

   function isFeature (This : in out ActivityFractureUtilAPI5; activity : Activity_Access; property : Unbounded_String) return Boolean is
   begin
        return activity.getPackageManager.hasSystemFeature (property);
   end isFeature;

   procedure getInstance is
      Java_Result : constant ActivityFractureUtilAPI5_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isTouch (This : in out ActivityFractureUtilAPI5; activity : Activity_Access) is
      Java_Result : constant Boolean := ActivityFractureUtilAPI5'Class (This).isTouch (activity);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTouch;

   procedure isMultiTouch (This : in out ActivityFractureUtilAPI5; activity : Activity_Access) is
      Java_Result : constant Boolean := ActivityFractureUtilAPI5'Class (This).isMultiTouch (activity);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMultiTouch;

   procedure isMultiTouchDistinct (This : in out ActivityFractureUtilAPI5; activity : Activity_Access) is
      Java_Result : constant Boolean := ActivityFractureUtilAPI5'Class (This).isMultiTouchDistinct (activity);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMultiTouchDistinct;

   procedure isFeature (This : in out ActivityFractureUtilAPI5; activity : Activity_Access; property : Unbounded_String) is
      Java_Result : constant Boolean := ActivityFractureUtilAPI5'Class (This).isFeature (activity, property);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFeature;

begin
   null;
   instance5 := ActivityFractureUtilAPI5_Package.Create;

end org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;


