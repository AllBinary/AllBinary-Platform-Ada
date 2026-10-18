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


with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.control.workflow.WorkFlowWrapper_Package; use org.allbinary.logic.control.workflow.WorkFlowWrapper_Package;

package body org.allbinary.logic.control.workflow.DbWorkFlowFactory_Package is

   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package AbeFactory_Package renames Standard.org.allbinary.logic.system.loader.AbeFactory_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out DbWorkFlowFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return DbWorkFlowFactory_Access is
   begin
        return DbWorkFlowFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out DbWorkFlowFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DbWorkFlowFactory_Access is
      This : constant DbWorkFlowFactory_Access := new DbWorkFlowFactory;
   begin
      DbWorkFlowFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (This : in out DbWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashMap_Param : access HashMap_Package.HashMap'Class) return WorkFlowInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      className : Unbounded_String;
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
      anyType : Java_Object_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            className := Java_Unbox (hashMap.get (DynamicObjectData_Package.NAME));
            params := new Java_Object_Access_Array'(0 .. (1) - 1 => null);
            classes := new Ada_Tags_Tag_Array'(0 .. (1) - 1 => Ada.Tags.No_Tag);
            classes (0) := hashMap.all'Tag;
            params (0) := Java_Object_Access (hashMap);
            anyType := AbeFactory_Package.getInstance.getInstance (abeClientInformation, className, classes, params);
            return WorkFlowInterface_Access (WorkFlowWrapper_Package.Create (anyType));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, DbWorkFlowFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(HashMap)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out DbWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant WorkFlowInterface_Access := DbWorkFlowFactory'Class (This).getInstance (abeClientInformation_Param => abeClientInformation_Param, hashMap_Param => hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := DbWorkFlowFactory_Package.Create;

end org.allbinary.logic.control.workflow.DbWorkFlowFactory_Package;


