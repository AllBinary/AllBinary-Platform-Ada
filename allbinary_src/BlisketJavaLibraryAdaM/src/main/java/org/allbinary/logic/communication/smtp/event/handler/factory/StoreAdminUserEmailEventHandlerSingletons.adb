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


package body org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package is

   procedure Initialize_Fields (This : in out StoreAdminUserEmailEventHandlerSingletons'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.userEmailEventHandlerHashMap := StdUtil_Package.getInstance.createHashMap;
   end Initialize_Fields;


   function getInstance return StoreAdminUserEmailEventHandlerSingletons_Access is
   begin
        return StoreAdminUserEmailEventHandlerSingletons_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StoreAdminUserEmailEventHandlerSingletons'Class) is
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.START, StoreAdminUserEmailEventHandlerSingletons_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return StoreAdminUserEmailEventHandlerSingletons_Access is
      This : constant StoreAdminUserEmailEventHandlerSingletons_Access := new StoreAdminUserEmailEventHandlerSingletons;
   begin
      StoreAdminUserEmailEventHandlerSingletons_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out StoreAdminUserEmailEventHandlerSingletons; userEmailEventNameData_Param : access UserEmailEventNameData'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface'Class) return UserEmailEventHandler_Access is
      userEmailEventNameData : UserEmailEventNameData_Access := UserEmailEventNameData_Access (userEmailEventNameData_Param);
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      storeFrontInterface : StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      userEmailEventHandler : UserEmailEventHandler_Access;
      userVector : BasicArrayList_Access;
      newUserEmailEventHandler : UserEmailEventHandler_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.START, StoreAdminUserEmailEventHandlerSingletons_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
        end if;
        userEmailEventHandler := UserEmailEventHandler_Access (This.userEmailEventHandlerHashMap.get (userEmailEventNameData));
        if (userEmailEventHandler) = (null) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Creating New Named UserEmailEventHandler"), StoreAdminUserEmailEventHandlerSingletons_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            userVector := UserEntityFactory_Package.getInstance.getStoreManagers (storeFrontInterface);
            newUserEmailEventHandler := EmailEventHandlerUtil_Package.getInstance.getEventHandler (abeClientInformation, userEmailEventNameData, userVector);
            This.userEmailEventHandlerHashMap.put (userEmailEventNameData, newUserEmailEventHandler);
            return newUserEmailEventHandler;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Returning existing UserEmailEventHandler"), StoreAdminUserEmailEventHandlerSingletons_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            return userEmailEventHandler;
        end if;
   end getInstance;

   procedure getInstance (This : in out StoreAdminUserEmailEventHandlerSingletons; userEmailEventNameData_Param : access UserEmailEventNameData'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface'Class) is
      Java_Result : constant UserEmailEventHandler_Access := StoreAdminUserEmailEventHandlerSingletons'Class (This).getInstance (userEmailEventNameData_Param, abeClientInformation_Param, storeFrontInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StoreAdminUserEmailEventHandlerSingletons_Package.Create;

end org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package;


