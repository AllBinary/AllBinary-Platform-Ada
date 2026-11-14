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
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package; use org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package;
with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package; use org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;
with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body taghelpers.StoreTagWorkFlowHelper_Package is

   package StoreTagWorkFlowFactory_Package renames Standard.org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
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
   subtype StoreWorkFlowInterface_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access;
   function "=" (Left, Right : StoreWorkFlowInterface_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References."=";
   subtype StoreWorkFlowInterface_Access_Array is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array;
   function "=" (Left, Right : StoreWorkFlowInterface_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References."=";
   subtype StoreWorkFlowInterface_Access_Array_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access;
   function "=" (Left, Right : StoreWorkFlowInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References."=";
   subtype StoreWorkFlowInterface_Access_Array_Access_Array is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreWorkFlowInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References."=";
   subtype StoreWorkFlowInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreWorkFlowInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out StoreTagWorkFlowHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := AbeClientInformationInterface_Access (ServiceClientInformationInterfaceFactory_Package.getInstance);
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreTagWorkFlowHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPER) then
            This.logUtil.putF (To_Unbounded_String ("Properties: ") & hashMap.toString, StoreTagWorkFlowHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("StoreTagWorkFlowHelper()"));
        end if;
        This.storeWorkFlowInterface := StoreWorkFlowInterface_Access (StoreTagWorkFlowFactory_Package.getInstance.getInstance (This.abeClientInformation, hashMap, pageContext));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreTagWorkFlowHelper_Access is
      This : constant StoreTagWorkFlowHelper_Access := new StoreTagWorkFlowHelper;
   begin
      StoreTagWorkFlowHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   function process (This : in out StoreTagWorkFlowHelper) return Integer is
      error : Unbounded_String;
   begin
        begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPER) then
                This.logUtil.putF (To_Unbounded_String ("Process"), StoreTagWorkFlowHelper_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
            end if;
            return This.storeWorkFlowInterface.process;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to process workflow: ");
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreTagWorkFlowHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end process;

end taghelpers.StoreTagWorkFlowHelper_Package;


