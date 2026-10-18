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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package; use org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfo_Package; use org.allbinary.logic.visual.transform.info.TransformInfo_Package;
with views.business.context.modules.storefront.customizer.CustomizerUtil_Package; use views.business.context.modules.storefront.customizer.CustomizerUtil_Package;

package body views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package TransformGeneratorUtil_Package renames Standard.org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package;
   package TransformInfo_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfo_Package;
   procedure Initialize_Fields (This : in out StoreCustomizerComponentUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return StoreCustomizerComponentUtil_Access is
   begin
        return StoreCustomizerComponentUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StoreCustomizerComponentUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreCustomizerComponentUtil_Access is
      This : constant StoreCustomizerComponentUtil_Access := new StoreCustomizerComponentUtil;
   begin
      StoreCustomizerComponentUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function generate (This : in out StoreCustomizerComponentUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return Unbounded_String is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      customizerUtil : CustomizerUtil_Access;
      allCustomizedViews : BasicArrayList_Access;
      size : Integer;
      nextTransformInfoInterface : TransformInfo_Access;
      allViewsToBeModified : BasicArrayList_Access;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Generating Modified Views For: ") & transformInfoInterface.getName, StoreCustomizerComponentUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("generateModifiedViews()"));
        end if;
        customizerUtil := CustomizerUtil_Package.getInstance;
        allCustomizedViews := customizerUtil.getTransformInfoObjectConfigGroupComponentNodes (transformInfoInterface);
        size := allCustomizedViews.size;
        for index in 0 .. (size) - 1 loop
            nextTransformInfoInterface := TransformInfo_Access (allCustomizedViews.get (index));
            allViewsToBeModified := customizerUtil.getTransformInfoObjectConfigComponentNodesToCustomize (transformInfoInterface, nextTransformInfoInterface);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("View or component that was modified by a Customizer: ") & nextTransformInfoInterface.getName, StoreCustomizerComponentUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("generateModifiedViews()"));
            end if;
            StoreCustomizerComponentUtil'Class (This).generate (abeClientInformation, transformInfoInterface, allViewsToBeModified);
        end loop;
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end generate;

   --  throws Exception
   procedure generate (This : in out StoreCustomizerComponentUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; allViewsToBeModifiedVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      allViewsToBeModifiedVector : constant BasicArrayList_Access := BasicArrayList_Access (allViewsToBeModifiedVector_Param);
      customizerUtil : CustomizerUtil_Access;
      size : Integer;
      nextTransformInfoInterface : TransformInfo_Access;
      specifiedTransformInfoInterface : TransformInfoInterface_Access;
      index : Integer;
   begin
        customizerUtil := CustomizerUtil_Package.getInstance;
        size := allViewsToBeModifiedVector.size;
        for index in 0 .. (size) - 1 loop
            nextTransformInfoInterface := TransformInfo_Access (allViewsToBeModifiedVector.get (index));
            specifiedTransformInfoInterface := customizerUtil.getTransformInfoInterfaceToCustomize (transformInfoInterface, nextTransformInfoInterface);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Retrieved: ") & specifiedTransformInfoInterface.getName, StoreCustomizerComponentUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("generateModifiedViews()"));
            end if;
            TransformGeneratorUtil_Package.getInstance.generate (abeClientInformation, nextTransformInfoInterface, specifiedTransformInfoInterface);
        end loop;
   end generate;

   procedure generate (This : in out StoreCustomizerComponentUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant Unbounded_String := StoreCustomizerComponentUtil'Class (This).generate (abeClientInformation_Param, transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generate;

begin
   null;
   instance := StoreCustomizerComponentUtil_Package.Create;

end views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package;


