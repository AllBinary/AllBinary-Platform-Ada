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


package body org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package is

   procedure Initialize_Fields (This : in out LockedFeatureNotificationUtil'Class) is
   begin
      null;
      This.gameNotificationEvent := GameNotificationEvent_Package.Create (LockedFeatureNotificationUtil_Access'(This'Unchecked_Access), LicenseStrings_Package.getInstance.LOCKED, SmallIntegerSingletonFactory_Package.getInstance.getAt (3), BasicColorFactory_Package.getInstance.RED, BooleanFactory_Package.getInstance.FALSE);
   end Initialize_Fields;

   procedure Initialize (This : in out LockedFeatureNotificationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LockedFeatureNotificationUtil_Access is
      This : constant LockedFeatureNotificationUtil_Access := new LockedFeatureNotificationUtil;
   begin
      LockedFeatureNotificationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LockedFeatureNotificationUtil_Access is
   begin
        return LockedFeatureNotificationUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure fire (This : in out LockedFeatureNotificationUtil) is
   begin
        PrimaryPlayerQueueFactory_Package.getInstance.add (ErrorSound_Package.getInstance);
        GameNotificationEventHandler_Package.getInstance.fireEvent (This.gameNotificationEvent);
   end fire;

   --  throws Exception
   procedure fireWithColor (This : in out LockedFeatureNotificationUtil; basicColor_Param : access BasicColor'Class) is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        PrimaryPlayerQueueFactory_Package.getInstance.add (ErrorSound_Package.getInstance);
        This.gameNotificationEvent.setBasicColorP (basicColor);
        GameNotificationEventHandler_Package.getInstance.fireEvent (This.gameNotificationEvent);
   end fireWithColor;

begin
   null;
   instance := LockedFeatureNotificationUtil_Package.Create;

end org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;


