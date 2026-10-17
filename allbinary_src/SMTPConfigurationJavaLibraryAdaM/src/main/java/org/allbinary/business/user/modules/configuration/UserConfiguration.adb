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


package body org.allbinary.business.user.modules.configuration.UserConfiguration_Package is

   procedure Initialize_Fields (This : in out UserConfiguration'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserConfiguration'Class) is
   begin
      Initialize_Fields (This);
        This.userEmailConfigurationInterface := UserEmailConfigurationInterface_Access (UserEmailConfiguration_Package.Create);
        This.timeCreated := TimeCreated_Package.Create (0);
        This.timeLastModified := TimeLastModified_Package.Create (0);
   end Initialize;

   function Create return UserConfiguration_Access is
      This : constant UserConfiguration_Access := new UserConfiguration;
   begin
      UserConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out UserConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        This.userEmailConfigurationInterface := UserEmailConfigurationInterface_Access (UserEmailConfiguration_Package.Create (hashMap));
        This.timeCreated := TimeCreated_Package.Create (Unbounded_String (hashMap.get (EntryData_Package.getInstance.TIMECREATED)));
        This.timeLastModified := TimeLastModified_Package.Create (Unbounded_String (hashMap.get (EntryData_Package.getInstance.LASTMODIFIED)));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserConfiguration_Access is
      This : constant UserConfiguration_Access := new UserConfiguration;
   begin
      UserConfiguration_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getUserEmailConfigurationInterface (This : in out UserConfiguration) return UserEmailConfigurationInterface_Access is
   begin
        return This.userEmailConfigurationInterface;
   end getUserEmailConfigurationInterface;

   procedure setUserEmailConfigurationInterface (This : in out UserConfiguration; userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface_Package.UserEmailConfigurationInterface'Class) is
      userEmailConfigurationInterface : constant UserEmailConfigurationInterface_Access := UserEmailConfigurationInterface_Access (userEmailConfigurationInterface_Param);
   begin
        This.userEmailConfigurationInterface := userEmailConfigurationInterface;
   end setUserEmailConfigurationInterface;

   function getTimeCreated (This : in out UserConfiguration) return TimeCreated_Access is
   begin
        return This.timeCreated;
   end getTimeCreated;

   function getTimeLastModified (This : in out UserConfiguration) return TimeLastModified_Access is
   begin
        return This.timeLastModified;
   end getTimeLastModified;

   procedure setTimeCreated (This : in out UserConfiguration; timeCreated_Param : access TimeCreated_Package.TimeCreated'Class) is
      timeCreated : constant TimeCreated_Access := TimeCreated_Access (timeCreated_Param);
   begin
        This.timeCreated := timeCreated;
   end setTimeCreated;

   procedure setTimeLastModified (This : in out UserConfiguration; timeLastModified_Param : access TimeLastModified_Package.TimeLastModified'Class) is
      timeLastModified : constant TimeLastModified_Access := TimeLastModified_Access (timeLastModified_Param);
   begin
        This.timeLastModified := timeLastModified;
   end setTimeLastModified;

end org.allbinary.business.user.modules.configuration.UserConfiguration_Package;


