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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.business.time.Time_Package;
with org.allbinary.business.time.created.TimeCreated_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package body org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package is

   package UserEmailEventsConfiguration_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype UserEmailEventsConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References.UserEmailEventsConfigurationInterface_Access;
   function "=" (Left, Right : UserEmailEventsConfigurationInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References."=";
   subtype UserEmailEventsConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References.UserEmailEventsConfigurationInterface_Access_Array;
   function "=" (Left, Right : UserEmailEventsConfigurationInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References."=";
   subtype UserEmailEventsConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References.UserEmailEventsConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventsConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References."=";
   subtype UserEmailEventsConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References.UserEmailEventsConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventsConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References."=";
   subtype UserEmailEventsConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References.UserEmailEventsConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventsConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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


