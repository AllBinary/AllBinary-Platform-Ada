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


package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package is

   procedure Initialize_Fields (This : in out UserEmailEventConfigurationMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventConfigurationMapping'Class; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class) is
      userEmailEventConfigurationInterface : constant UserEmailEventConfigurationInterface_Access := UserEmailEventConfigurationInterface_Access (userEmailEventConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.userEmailEventConfigurationInterface := userEmailEventConfigurationInterface;
   end Initialize;

   function Create (userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class) return UserEmailEventConfigurationMapping_Access is
      This : constant UserEmailEventConfigurationMapping_Access := new UserEmailEventConfigurationMapping;
   begin
      UserEmailEventConfigurationMapping_Package.Initialize (This.all, userEmailEventConfigurationInterface_Param);
      return This;
   end Create;

   function toHashMap (This : in out UserEmailEventConfigurationMapping) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (UserEmailEventConfigurationData_Package.NAME, Java_Box (This.userEmailEventConfigurationInterface.getName));
        hashMap.put (UserEmailEventConfigurationData_Package.LISTENER_CLASSPATH, This.userEmailEventConfigurationInterface.getEventListenerClassPath);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function getKey (This : in out UserEmailEventConfigurationMapping) return Java_Object_Access is
   begin
        return UserEmailEventConfigurationData_Package.NAME;
   end getKey;

   --  throws Exception
   function toVector (This : in out UserEmailEventConfigurationMapping) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayListD_Package.Create;
        vector.add (This.userEmailEventConfigurationInterface.getName);
        vector.add (This.userEmailEventConfigurationInterface.getEventListenerClassPath);
        return vector;
   end toVector;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package;


