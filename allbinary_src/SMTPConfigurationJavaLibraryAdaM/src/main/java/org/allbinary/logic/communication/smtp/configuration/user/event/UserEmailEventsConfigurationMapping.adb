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


package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationMapping_Package is

   procedure Initialize_Fields (This : in out UserEmailEventsConfigurationMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventsConfigurationMapping'Class; userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access) is
   begin
      Initialize_Fields (This);
        This.userEmailEventsConfigurationInterface := userEmailEventsConfigurationInterface;
   end Initialize;

   function Create (userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access) return UserEmailEventsConfigurationMapping_Access is
      This : constant UserEmailEventsConfigurationMapping_Access := new UserEmailEventsConfigurationMapping;
   begin
      Initialize (This.all, userEmailEventsConfigurationInterface);
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
        vector := BasicArrayListD_Package.Create;
        return vector;
   end toVector;

   procedure toHashMap (This : in out UserEmailEventsConfigurationMapping) is
      Java_Result : constant HashMap_Access := UserEmailEventsConfigurationMapping'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure getKey (This : in out UserEmailEventsConfigurationMapping) is
      Java_Result : constant Java_Object_Access := UserEmailEventsConfigurationMapping'Class (This).getKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

   procedure toVector (This : in out UserEmailEventsConfigurationMapping) is
      Java_Result : constant BasicArrayList_Access := UserEmailEventsConfigurationMapping'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationMapping_Package;


