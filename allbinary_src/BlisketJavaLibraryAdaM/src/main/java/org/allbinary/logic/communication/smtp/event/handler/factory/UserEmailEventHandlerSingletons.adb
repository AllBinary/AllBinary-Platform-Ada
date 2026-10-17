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


package body org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package is

   procedure Initialize_Fields (This : in out UserEmailEventHandlerSingletons'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.userEmailEventHandlerHashMap := StdUtil_Package.getInstance.createHashMap;
   end Initialize_Fields;


   function getInstance return UserEmailEventHandlerSingletons_Access is
   begin
        return UserEmailEventHandlerSingletons_Package.instance;
   end getInstance;

   procedure Initialize (This : in out UserEmailEventHandlerSingletons'Class) is
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.START, UserEmailEventHandlerSingletons_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return UserEmailEventHandlerSingletons_Access is
      This : constant UserEmailEventHandlerSingletons_Access := new UserEmailEventHandlerSingletons;
   begin
      UserEmailEventHandlerSingletons_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out UserEmailEventHandlerSingletons; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) return UserEmailEventHandler_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      userEmailEventNameData : constant UserEmailEventNameData_Access := UserEmailEventNameData_Access (userEmailEventNameData_Param);
      userInterface : constant UserInterface_Access := UserInterface_Access (userInterface_Param);
      userEmailEventHandler : UserEmailEventHandler_Access;
      newUserEmailEventHandler : UserEmailEventHandler_Access;
      vector : BasicArrayList_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.START, UserEmailEventHandlerSingletons_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
        end if;
        userEmailEventHandler := UserEmailEventHandler_Access (This.userEmailEventHandlerHashMap.get (userEmailEventNameData));
        if (userEmailEventHandler) = (null) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Creating New Named UserEmailEventHandler"), UserEmailEventHandlerSingletons_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            newUserEmailEventHandler := UserEmailEventHandler_Package.Create;
            vector := EmailEventHandlerUtil_Package.getUserEmailEventListenerVector (abeClientInformation, userEmailEventNameData, userInterface);
            newUserEmailEventHandler.addListener (vector);
            newUserEmailEventHandler.addListener (LogUserEmailEventListenerModule_Package.Create);
            This.userEmailEventHandlerHashMap.put (userEmailEventNameData, newUserEmailEventHandler);
            return newUserEmailEventHandler;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Returning existing UserEmailEventHandler"), UserEmailEventHandlerSingletons_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            return userEmailEventHandler;
        end if;
   end getInstance;

   procedure getInstance (This : in out UserEmailEventHandlerSingletons; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) is
      Java_Result : constant UserEmailEventHandler_Access := UserEmailEventHandlerSingletons'Class (This).getInstance (abeClientInformation_Param, userEmailEventNameData_Param, userInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := UserEmailEventHandlerSingletons_Package.Create;

end org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package;


