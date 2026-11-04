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


with org.allbinary.business.user.UserFactoryInterface_Package; use org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserFactoryInterface_Package_References;
with org.allbinary.business.user.role.BasicUserRole_Package; use org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.BasicUserRole_Package_References;
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
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package body org.allbinary.business.user.role.UserRole_Package is

   subtype UserFactoryInterface_Access is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access;
   function "=" (Left, Right : UserFactoryInterface_Access) return Boolean renames org.allbinary.business.user.UserFactoryInterface_Package_References."=";
   subtype UserFactoryInterface_Access_Array is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array;
   function "=" (Left, Right : UserFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.user.UserFactoryInterface_Package_References."=";
   subtype UserFactoryInterface_Access_Array_Access is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : UserFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserFactoryInterface_Package_References."=";
   subtype UserFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.UserFactoryInterface_Package_References."=";
   subtype UserFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserFactoryInterface_Package_References."=";
   subtype BasicUserRole_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access;
   function "=" (Left, Right : BasicUserRole_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array;
   function "=" (Left, Right : BasicUserRole_Access_Array) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access;
   function "=" (Left, Right : BasicUserRole_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array;
   function "=" (Left, Right : BasicUserRole_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicUserRole_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   procedure Initialize_Fields (This : in out UserRole'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserRole'Class; aBasicUserRole_Param : access BasicUserRole_Package.BasicUserRole'Class; aUserFactoryInterface_Param : access UserFactoryInterface_Package.UserFactoryInterface'Class) is
      aBasicUserRole : constant BasicUserRole_Access := BasicUserRole_Access (aBasicUserRole_Param);
      aUserFactoryInterface : constant UserFactoryInterface_Access := UserFactoryInterface_Access (aUserFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.basicUserRole := aBasicUserRole;
        This.userFactoryInterface := aUserFactoryInterface;
   end Initialize;

   function Create (aBasicUserRole_Param : access BasicUserRole_Package.BasicUserRole'Class; aUserFactoryInterface_Param : access UserFactoryInterface_Package.UserFactoryInterface'Class) return UserRole_Access is
      This : constant UserRole_Access := new UserRole;
   begin
      UserRole_Package.Initialize (This.all, aBasicUserRole_Param, aUserFactoryInterface_Param);
      return This;
   end Create;

   function toString (This : in out UserRole) return Unbounded_String is
   begin
        return This.basicUserRole.toString;
   end toString;

   function getBasicUserRole (This : in out UserRole) return BasicUserRole_Access is
   begin
        return This.basicUserRole;
   end getBasicUserRole;

   --  throws Exception
   function getUserFactory (This : in out UserRole) return UserFactoryInterface_Access is
   begin
        return This.userFactoryInterface;
   end getUserFactory;

   function getSessionTimeout (This : in out UserRole) return Long_Long_Integer is
   begin
        return This.basicUserRole.getSessionTimeout;
   end getSessionTimeout;

   function getSessionInactivityTimeout (This : in out UserRole) return Long_Long_Integer is
   begin
        return This.basicUserRole.getSessionInactivityTimeout;
   end getSessionInactivityTimeout;

end org.allbinary.business.user.role.UserRole_Package;


