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


package body org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package is

   procedure Initialize_Fields (This : in out EmailEventHandlerUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return EmailEventHandlerUtil_Access is
   begin
        return EmailEventHandlerUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out EmailEventHandlerUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EmailEventHandlerUtil_Access is
      This : constant EmailEventHandlerUtil_Access := new EmailEventHandlerUtil;
   begin
      EmailEventHandlerUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getEventHandler (This : in out EmailEventHandlerUtil; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userVector : BasicArrayList_Access) return UserEmailEventHandler_Access is
      stringBuffer : StringMaker_Access;
      userEmailEventHandler : UserEmailEventHandler_Access;
      size : Integer;
      userInterface : UserInterface_Access;
      vector : BasicArrayList_Access;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Returning UserEmailEventHandler for "));
            stringBuffer.appendint (userVector.size);
            stringBuffer.append (To_Unbounded_String (" users."));
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("getEventHandler"));
        end if;
        userEmailEventHandler := UserEmailEventHandler_Package.Create;
        userEmailEventHandler.addListener (LogUserEmailEventListenerModule_Package.Create);
        size := userVector.size;
        for index in 0 .. (size) - 1 loop
            userInterface := UserInterface_Access (userVector.get (index));
            vector := EmailEventHandlerUtil_Package.getUserEmailEventListenerVector (abeClientInformation, userEmailEventNameData, userInterface);
            userEmailEventHandler.addListener (vector);
        end loop;
        return userEmailEventHandler;
   end getEventHandler;

   --  throws Exception
   function getUserEmailEventListenerVector (abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userInterface : UserInterface_Access) return BasicArrayList_Access is
      userConfigurationInterface : UserConfigurationInterface_Access;
      userEmailConfigurationInterface : UserEmailConfigurationInterface_Access;
      userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access;
      userEmailEventListenerInterface : UserEmailEventListenerInterface_Access;
      vector : BasicArrayList_Access;
   begin
        userConfigurationInterface := userInterface.getUserConfigurationInterface;
        userEmailConfigurationInterface := userConfigurationInterface.getUserEmailConfigurationInterface;
        userEmailEventsConfigurationInterface := userEmailConfigurationInterface.getUserEmailEventsConfigurationInterface;
        userEmailEventListenerInterface := userEmailEventsConfigurationInterface.getEventListener (abeClientInformation, userEmailEventNameData, userInterface);
        vector := BasicArrayListD_Package.Create;
        vector.add (userEmailEventListenerInterface);
        return vector;
   end getUserEmailEventListenerVector;

   procedure getEventHandler (This : in out EmailEventHandlerUtil; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userVector : BasicArrayList_Access) is
      Java_Result : constant UserEmailEventHandler_Access := EmailEventHandlerUtil'Class (This).getEventHandler (abeClientInformation, userEmailEventNameData, userVector);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEventHandler;

   procedure getUserEmailEventListenerVector (abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userInterface : UserInterface_Access) is
      Java_Result : constant BasicArrayList_Access := getUserEmailEventListenerVector (abeClientInformation, userEmailEventNameData, userInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserEmailEventListenerVector;

begin
   null;
   instance := EmailEventHandlerUtil_Package.Create;

end org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;


