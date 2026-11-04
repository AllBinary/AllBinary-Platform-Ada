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


with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
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
with org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package is

   package AbeFactory_Package renames Standard.org.allbinary.logic.system.loader.AbeFactory_Package;
   subtype UserInterface_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access;
   function "=" (Left, Right : UserInterface_Access) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array;
   function "=" (Left, Right : UserInterface_Access_Array) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access;
   function "=" (Left, Right : UserInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype UserEmailEventConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access;
   function "=" (Left, Right : UserEmailEventConfigurationInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References."=";
   subtype UserEmailEventConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array;
   function "=" (Left, Right : UserEmailEventConfigurationInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References."=";
   subtype UserEmailEventConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References."=";
   subtype UserEmailEventConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References."=";
   subtype UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References."=";
   procedure Initialize_Fields (This : in out UserEmailEventListenerFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventListenerFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UserEmailEventListenerFactory_Access is
      This : constant UserEmailEventListenerFactory_Access := new UserEmailEventListenerFactory;
   begin
      UserEmailEventListenerFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) return UserEmailEventListenerInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      userEmailEventConfigurationInterface : constant UserEmailEventConfigurationInterface_Access := UserEmailEventConfigurationInterface_Access (userEmailEventConfigurationInterface_Param);
      userInterface : constant UserInterface_Access := UserInterface_Access (userInterface_Param);
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
   begin
        params := new Java_Object_Access_Array'(0 .. (1) - 1 => null);
        classes := new Ada_Tags_Tag_Array'(0 .. (1) - 1 => Ada.Tags.No_Tag);
        classes (0) := UserInterface_Package.UserInterface'Tag;
        params (0) := Java_Object_Access (userInterface);
        return UserEmailEventListenerInterface_Access (AbeFactory_Package.getInstance.getInstance (abeClientInformation, userEmailEventConfigurationInterface.getEventListenerClassPath, classes, params));
   end getInstance;

   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) is
      Java_Result : constant UserEmailEventListenerInterface_Access := getInstance (abeClientInformation_Param => abeClientInformation_Param, userEmailEventConfigurationInterface_Param => userEmailEventConfigurationInterface_Param, userInterface_Param => userInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package;


