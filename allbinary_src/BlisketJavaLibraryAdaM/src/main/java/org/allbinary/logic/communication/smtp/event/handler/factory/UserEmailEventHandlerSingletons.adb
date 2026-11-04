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
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package; use org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package; use org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package; use org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package EmailEventHandlerUtil_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;
   package LogUserEmailEventListenerModule_Package renames Standard.org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package;
   subtype UserInterface_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access;
   function "=" (Left, Right : UserInterface_Access) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array;
   function "=" (Left, Right : UserInterface_Access_Array) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access;
   function "=" (Left, Right : UserInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype UserEmailEventNameData_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access;
   function "=" (Left, Right : UserEmailEventNameData_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventHandler_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access;
   function "=" (Left, Right : UserEmailEventHandler_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out UserEmailEventHandlerSingletons'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.userEmailEventHandlerHashMap := StdUtil_Package.getInstance.createHashMap;
   end Initialize_Fields;


   function getInstance return UserEmailEventHandlerSingletons_Access is
   begin
        return UserEmailEventHandlerSingletons_Access (UserEmailEventHandlerSingletons_Package.instance);
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
      Java_Result : constant UserEmailEventHandler_Access := UserEmailEventHandlerSingletons'Class (This).getInstance (abeClientInformation_Param => abeClientInformation_Param, userEmailEventNameData_Param => userEmailEventNameData_Param, userInterface_Param => userInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := UserEmailEventHandlerSingletons_Package.Create;

end org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package;


