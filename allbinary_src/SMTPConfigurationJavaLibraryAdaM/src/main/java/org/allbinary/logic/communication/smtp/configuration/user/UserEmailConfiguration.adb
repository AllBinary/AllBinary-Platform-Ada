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


with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;

package body org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package is

   package UserEmailEventsConfiguration_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;
   procedure Initialize_Fields (This : in out UserEmailConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.userEmailEventsConfigurationInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailConfiguration'Class) is
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, UserEmailConfiguration_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        UserEmailConfiguration'Class (This).setUserEmailEventsConfigurationInterface (UserEmailEventsConfiguration_Package.Create);
   end Initialize;

   function Create return UserEmailConfiguration_Access is
      This : constant UserEmailConfiguration_Access := new UserEmailConfiguration;
   begin
      UserEmailConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out UserEmailConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, UserEmailConfiguration_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        UserEmailConfiguration'Class (This).setUserEmailEventsConfigurationInterface (UserEmailEventsConfiguration_Package.Create (hashMap));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserEmailConfiguration_Access is
      This : constant UserEmailConfiguration_Access := new UserEmailConfiguration;
   begin
      UserEmailConfiguration_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getUserEmailEventsConfigurationInterface (This : in out UserEmailConfiguration) return UserEmailEventsConfigurationInterface_Access is
   begin
        return This.userEmailEventsConfigurationInterface;
   end getUserEmailEventsConfigurationInterface;

   procedure setUserEmailEventsConfigurationInterface (This : in out UserEmailConfiguration; userEmailEventsConfigurationInterface_Param : access UserEmailEventsConfigurationInterface_Package.UserEmailEventsConfigurationInterface'Class) is
      userEmailEventsConfigurationInterface : constant UserEmailEventsConfigurationInterface_Access := UserEmailEventsConfigurationInterface_Access (userEmailEventsConfigurationInterface_Param);
   begin
        This.userEmailEventsConfigurationInterface := userEmailEventsConfigurationInterface;
   end setUserEmailEventsConfigurationInterface;

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package;


