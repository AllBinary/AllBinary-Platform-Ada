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


with org.allbinary.logic.io.InputOutputTypeData_Package; use org.allbinary.logic.io.InputOutputTypeData_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package;

package body org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package is

   package InputOutputTypeData_Package renames Standard.org.allbinary.logic.io.InputOutputTypeData_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out TransformInfoObjectConfigGeneratorFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TransformInfoObjectConfigGeneratorFactory_Access is
   begin
        return TransformInfoObjectConfigGeneratorFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformInfoObjectConfigGeneratorFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoObjectConfigGeneratorFactory_Access is
      This : constant TransformInfoObjectConfigGeneratorFactory_Access := new TransformInfoObjectConfigGeneratorFactory;
   begin
      TransformInfoObjectConfigGeneratorFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigGeneratorFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoObjectConfigGenerator_Access is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      type_Id : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        type_Id := Java_Unbox (transformInfoInterface.getObjectConfigInterface.getOutputTypeName);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (To_Unbounded_String ("Generating Instance for type: ") & type_Id, TransformInfoObjectConfigGeneratorFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        end if;
        if (((type_Id) = (Null_Unbounded_String)) or else ((Java_Compare_To (type_Id, InputOutputTypeData_Package.getInstance.RESPONSE)) = (0))) or else (transformInfoInterface.isChild) then
            return TransformInfoObjectConfigGenerator_Access (BasicGenerator_Package.Create);
        elsif (Java_Compare_To (type_Id, InputOutputTypeData_Package.getInstance.FILE)) = (0) then
            return TransformInfoObjectConfigGenerator_Access (StoreFileGenerator_Package.Create (transformInfoInterface));
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such TransformInfoObjectConfigGenerator Type")));
        end if;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigGeneratorFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant TransformInfoObjectConfigGenerator_Access := TransformInfoObjectConfigGeneratorFactory'Class (This).getInstance (transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoObjectConfigGeneratorFactory_Package.Create;

end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;


