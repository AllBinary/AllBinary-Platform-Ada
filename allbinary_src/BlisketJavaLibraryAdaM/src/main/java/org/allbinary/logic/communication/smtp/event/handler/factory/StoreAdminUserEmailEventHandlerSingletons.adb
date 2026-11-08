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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References;
with org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package; use org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package; use org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package UserEntityFactory_Package renames Standard.org.allbinary.data.tables.user.UserEntityFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package EmailEventHandlerUtil_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   function "=" (Left, Right : StoreFrontInterface_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   function "=" (Left, Right : StoreFrontInterface_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInterface_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out StoreAdminUserEmailEventHandlerSingletons'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.userEmailEventHandlerHashMap := StdUtil_Package.getInstance.createHashMap;
   end Initialize_Fields;


   function getInstance return StoreAdminUserEmailEventHandlerSingletons_Access is
   begin
        return StoreAdminUserEmailEventHandlerSingletons_Access (StoreAdminUserEmailEventHandlerSingletons_Package.instance);
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
   function getInstance (This : in out StoreAdminUserEmailEventHandlerSingletons; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return UserEmailEventHandler_Access is
      userEmailEventNameData : constant UserEmailEventNameData_Access := UserEmailEventNameData_Access (userEmailEventNameData_Param);
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
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

   procedure getInstance (This : in out StoreAdminUserEmailEventHandlerSingletons; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      Java_Result : constant UserEmailEventHandler_Access := StoreAdminUserEmailEventHandlerSingletons'Class (This).getInstance (userEmailEventNameData_Param => userEmailEventNameData_Param, abeClientInformation_Param => abeClientInformation_Param, storeFrontInterface_Param => storeFrontInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StoreAdminUserEmailEventHandlerSingletons_Package.Create;

end org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package;


