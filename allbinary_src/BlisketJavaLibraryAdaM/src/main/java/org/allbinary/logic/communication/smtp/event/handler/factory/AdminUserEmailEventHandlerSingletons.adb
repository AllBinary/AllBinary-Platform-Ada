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


package body org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package is

   procedure Initialize_Fields (This : in out AdminUserEmailEventHandlerSingletons'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.userEmailEventHandlerHashMap := StdUtil_Package.getInstance.createHashMap;
   end Initialize_Fields;


   function getInstance return AdminUserEmailEventHandlerSingletons_Access is
   begin
        return AdminUserEmailEventHandlerSingletons_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AdminUserEmailEventHandlerSingletons'Class) is
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return AdminUserEmailEventHandlerSingletons_Access is
      This : constant AdminUserEmailEventHandlerSingletons_Access := new AdminUserEmailEventHandlerSingletons;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out AdminUserEmailEventHandlerSingletons; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access) return UserEmailEventHandler_Access is
      userEmailEventHandler : UserEmailEventHandler_Access;
      userVector : BasicArrayList_Access;
      newUserEmailEventHandler : UserEmailEventHandler_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
        end if;
        userEmailEventHandler := UserEmailEventHandler_Access (This.userEmailEventHandlerHashMap.get (userEmailEventNameData));
        if (userEmailEventHandler) = (null) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Creating New Named UserEmailEventHandler"), This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
            end if;
            userVector := UserEntityFactory_Package.getInstance.getAdministrators;
            newUserEmailEventHandler := EmailEventHandlerUtil_Package.getInstance.getEventHandler (abeClientInformation, userEmailEventNameData, userVector);
            This.userEmailEventHandlerHashMap.put (userEmailEventNameData, newUserEmailEventHandler);
            return newUserEmailEventHandler;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Returning existing UserEmailEventHandler"), This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
            end if;
            return userEmailEventHandler;
        end if;
   end getInstance;

   procedure getInstance is
      Java_Result : constant AdminUserEmailEventHandlerSingletons_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out AdminUserEmailEventHandlerSingletons; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access) is
      Java_Result : constant UserEmailEventHandler_Access := AdminUserEmailEventHandlerSingletons'Class (This).getInstance (abeClientInformation, userEmailEventNameData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AdminUserEmailEventHandlerSingletons_Package.Create;

end org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;


