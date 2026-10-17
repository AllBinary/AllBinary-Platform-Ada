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


package body org.allbinary.logic.control.workflow.DbWorkFlowFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (This : in out DbWorkFlowFactory; abeClientInformation : AbeClientInformationInterface_Access; hashMap : HashMap_Access) return WorkFlowInterface_Access is
      className : Unbounded_String;
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
      anyType : Java_Object_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            className := Unbounded_String (hashMap.get (DynamicObjectData_Package.NAME));
            params := new Java_Object_Access_Array'(0 .. (1) - 1 => null);
            classes := new Ada_Tags_Tag_Array'(0 .. (1) - 1 => null);
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
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstance(HashMap)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance is
      Java_Result : constant DbWorkFlowFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out DbWorkFlowFactory; abeClientInformation : AbeClientInformationInterface_Access; hashMap : HashMap_Access) is
      Java_Result : constant WorkFlowInterface_Access := DbWorkFlowFactory'Class (This).getInstance (abeClientInformation, hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := DbWorkFlowFactory_Package.Create;

end org.allbinary.logic.control.workflow.DbWorkFlowFactory_Package;


