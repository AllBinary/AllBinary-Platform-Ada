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


package body org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package is

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
        vector := BasicArrayListD_Package.Create;
        return vector;
   end toVector;

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package;


