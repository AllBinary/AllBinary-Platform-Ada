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
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package;
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

package body org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package is

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
   subtype UserEmailConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access;
   function "=" (Left, Right : UserEmailConfigurationInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References."=";
   subtype UserEmailConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array;
   function "=" (Left, Right : UserEmailConfigurationInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References."=";
   subtype UserEmailConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : UserEmailConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References."=";
   subtype UserEmailConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References."=";
   subtype UserEmailConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References."=";
   procedure Initialize_Fields (This : in out UserEmailConfigurationMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailConfigurationMapping'Class; userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface_Package.UserEmailConfigurationInterface'Class) is
      userEmailConfigurationInterface : constant UserEmailConfigurationInterface_Access := UserEmailConfigurationInterface_Access (userEmailConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.userEmailConfigurationInterface := userEmailConfigurationInterface;
   end Initialize;

   function Create (userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface_Package.UserEmailConfigurationInterface'Class) return UserEmailConfigurationMapping_Access is
      This : constant UserEmailConfigurationMapping_Access := new UserEmailConfigurationMapping;
   begin
      UserEmailConfigurationMapping_Package.Initialize (This.all, userEmailConfigurationInterface_Param);
      return This;
   end Create;

   function toHashMap (This : in out UserEmailConfigurationMapping) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        return hashMap;
   end toHashMap;

   --  throws Exception
   function getKey (This : in out UserEmailConfigurationMapping) return Java_Object_Access is
   begin
        return UserEmailConfigurationData_Package.NAME;
   end getKey;

   --  throws Exception
   function toVector (This : in out UserEmailConfigurationMapping) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        return vector;
   end toVector;

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package;


