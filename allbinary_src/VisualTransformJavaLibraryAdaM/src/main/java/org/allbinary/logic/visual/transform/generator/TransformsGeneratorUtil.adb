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


package body org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package is

   procedure Initialize_Fields (This : in out TransformsGeneratorUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TransformsGeneratorUtil_Access is
   begin
        return TransformsGeneratorUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformsGeneratorUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformsGeneratorUtil_Access is
      This : constant TransformsGeneratorUtil_Access := new TransformsGeneratorUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function generateComponentsFromObjectConfig (This : in out TransformsGeneratorUtil; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; group : Unbounded_String) return Unbounded_String is
      transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface_Access;
      result : Unbounded_String;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Started Group: ") & group, This'Unchecked_Access, To_Unbounded_String ("generateComponentsFromObjectConfig(2)"));
        end if;
        transformInfoObjectConfigInterface := transformInfoInterface.getObjectConfigInterface;
        result := This.generateComponentsFromObjectConfig (abeClientInformation, transformInfoObjectConfigInterface, transformInfoInterface, group);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("End Group: ") & group, This'Unchecked_Access, To_Unbounded_String ("generateComponentsFromObjectConfig(2)"));
        end if;
        return result;
   end generateComponentsFromObjectConfig;

   --  throws Exception
   function generateComponentsFromObjectConfig (This : in out TransformsGeneratorUtil; abeClientInformation : AbeClientInformationInterface_Access; transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface_Access; transformInfoInterface : TransformInfoInterface_Access; group : Unbounded_String) return Unbounded_String is
      transformInfoObjectConfigComponentVector : BasicArrayList_Access;
      stringBuffer : StringMaker_Access;
      size : Integer;
      transformInfoObjectConfigComponent : TransformInfoDomNode_Access;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Started Group: ") & group, This'Unchecked_Access, To_Unbounded_String ("generateComponentsFromObjectConfig()"));
        end if;
        transformInfoObjectConfigComponentVector := transformInfoObjectConfigInterface.getTransformsGroup (group);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Processing "));
            stringBuffer.appendint (transformInfoObjectConfigComponentVector.size);
            stringBuffer.append (To_Unbounded_String (" Components Group: "));
            stringBuffer.append (group);
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("generateComponentsFromObjectConfig()"));
        end if;
        if (transformInfoObjectConfigComponentVector.size) < (1) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Pages Generated For Template.")));
        end if;
        size := transformInfoObjectConfigComponentVector.size;
        for index in 0 .. (size) - 1 loop
            transformInfoObjectConfigComponent := TransformInfoDomNode_Access (transformInfoObjectConfigComponentVector.get (index));
            TransformGeneratorUtil_Package.getInstance.generate (abeClientInformation, transformInfoObjectConfigComponent, transformInfoInterface);
        end loop;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Done Group: ") & group, This'Unchecked_Access, To_Unbounded_String ("generateComponentsFromObjectConfig()"));
        end if;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("<!-- Generated all template views successfully for View: "));
        stringBuffer.append (transformInfoInterface.getName);
        stringBuffer.append (To_Unbounded_String ("-->"));
        return stringBuffer.toString;
   end generateComponentsFromObjectConfig;

   procedure getInstance is
      Java_Result : constant TransformsGeneratorUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure generateComponentsFromObjectConfig (This : in out TransformsGeneratorUtil; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; group : Unbounded_String) is
      Java_Result : constant Unbounded_String := TransformsGeneratorUtil'Class (This).generateComponentsFromObjectConfig (abeClientInformation, transformInfoInterface, group);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generateComponentsFromObjectConfig;

   procedure generateComponentsFromObjectConfig (This : in out TransformsGeneratorUtil; abeClientInformation : AbeClientInformationInterface_Access; transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface_Access; transformInfoInterface : TransformInfoInterface_Access; group : Unbounded_String) is
      Java_Result : constant Unbounded_String := TransformsGeneratorUtil'Class (This).generateComponentsFromObjectConfig (abeClientInformation, transformInfoObjectConfigInterface, transformInfoInterface, group);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generateComponentsFromObjectConfig;

begin
   null;
   instance := TransformsGeneratorUtil_Package.Create;

end org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package;


