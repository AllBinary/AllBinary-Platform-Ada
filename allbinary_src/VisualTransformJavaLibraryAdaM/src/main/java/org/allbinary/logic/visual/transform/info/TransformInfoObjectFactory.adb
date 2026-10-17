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


package body org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package is

   procedure Initialize_Fields (This : in out TransformInfoObjectFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TransformInfoObjectFactory_Access is
   begin
        return TransformInfoObjectFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformInfoObjectFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoObjectFactory_Access is
      This : constant TransformInfoObjectFactory_Access := new TransformInfoObjectFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectFactory; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return TransformInterface_Access is
      commonStrings : CommonStrings_Access;
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
      anyType : TransformInterface_Access;
      stringBuffer : StringMaker_Access;
      error : Unbounded_String;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.putF (To_Unbounded_String ("Creating View: ") & transformInfoInterface.getName, This'Unchecked_Access, commonStrings.GET_INSTANCE);
            end if;
            params := new Java_Object_Access_Array'(0 .. (1) - 1 => null);
            classes := new Ada_Tags_Tag_Array'(0 .. (1) - 1 => null);
            classes (0) := TransformInfoInterface_Package.TransformInfoInterface'Tag;
            params (0) := Java_Object_Access (transformInfoInterface);
            anyType := TransformInterface_Access (AbeFactory_Package.getInstance.getInstance (abeClientInformation, transformInfoInterface.getObjectFile, classes, params));
            if (anyType) = (null) then
                if (transformInfoInterface) /= (null) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "No Such View Name: "));
                    stringBuffer.append (transformInfoInterface.getName);
                    stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "No Such View Object: "));
                    stringBuffer.append (transformInfoInterface.getObjectFile);
                    Java_Throw (Java_New_Exception ("Exception", stringBuffer.toString));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Object since transformInfo is null")));
                end if;
            end if;
            return anyType;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed To Get Instance: ");
            if (transformInfoInterface) /= (null) then
                error := error & transformInfoInterface.getName;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (error, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
        end;
   end getInstance;

   procedure getInstance is
      Java_Result : constant TransformInfoObjectFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectFactory; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) is
      Java_Result : constant TransformInterface_Access := TransformInfoObjectFactory'Class (This).getInstance (abeClientInformation, transformInfoInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoObjectFactory_Package.Create;

end org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;


