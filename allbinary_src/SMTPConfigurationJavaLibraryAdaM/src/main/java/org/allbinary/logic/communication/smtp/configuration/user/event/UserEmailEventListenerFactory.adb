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


package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package is

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
        classes := new Ada_Tags_Tag_Array'(0 .. (1) - 1 => null);
        classes (0) := UserInterface_Package.UserInterface'Tag;
        params (0) := Java_Object_Access (userInterface);
        return UserEmailEventListenerInterface_Access (AbeFactory_Package.getInstance.getInstance (abeClientInformation, userEmailEventConfigurationInterface.getEventListenerClassPath, classes, params));
   end getInstance;

   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) is
      Java_Result : constant UserEmailEventListenerInterface_Access := getInstance (abeClientInformation_Param, userEmailEventConfigurationInterface_Param, userInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package;


