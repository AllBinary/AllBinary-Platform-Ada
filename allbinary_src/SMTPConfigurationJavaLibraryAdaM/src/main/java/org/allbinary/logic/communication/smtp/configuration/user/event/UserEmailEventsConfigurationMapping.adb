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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package;
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

package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationMapping_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
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
   procedure Initialize_Fields (This : in out UserEmailEventsConfigurationMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventsConfigurationMapping'Class; userEmailEventsConfigurationInterface_Param : access UserEmailEventsConfigurationInterface_Package.UserEmailEventsConfigurationInterface'Class) is
      userEmailEventsConfigurationInterface : constant UserEmailEventsConfigurationInterface_Access := UserEmailEventsConfigurationInterface_Access (userEmailEventsConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.userEmailEventsConfigurationInterface := userEmailEventsConfigurationInterface;
   end Initialize;

   function Create (userEmailEventsConfigurationInterface_Param : access UserEmailEventsConfigurationInterface_Package.UserEmailEventsConfigurationInterface'Class) return UserEmailEventsConfigurationMapping_Access is
      This : constant UserEmailEventsConfigurationMapping_Access := new UserEmailEventsConfigurationMapping;
   begin
      UserEmailEventsConfigurationMapping_Package.Initialize (This.all, userEmailEventsConfigurationInterface_Param);
      return This;
   end Create;

   function toHashMap (This : in out UserEmailEventsConfigurationMapping) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        return hashMap;
   end toHashMap;

   --  throws Exception
   function getKey (This : in out UserEmailEventsConfigurationMapping) return Java_Object_Access is
   begin
        return UserEmailEventsConfigurationData_Package.NAME;
   end getKey;

   --  throws Exception
   function toVector (This : in out UserEmailEventsConfigurationMapping) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        return vector;
   end toVector;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationMapping_Package;


