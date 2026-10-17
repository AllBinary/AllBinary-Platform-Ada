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


package body views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package is

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
   function generate (This : in out StoreCustomizerComponentUtil; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return Unbounded_String is
      customizerUtil : CustomizerUtil_Access;
      allCustomizedViews : BasicArrayList_Access;
      size : Integer;
      nextTransformInfoInterface : TransformInfo_Access;
      allViewsToBeModified : BasicArrayList_Access;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Generating Modified Views For: ") & transformInfoInterface.getName, This'Unchecked_Access, To_Unbounded_String ("generateModifiedViews()"));
        end if;
        customizerUtil := CustomizerUtil_Package.getInstance;
        allCustomizedViews := customizerUtil.getTransformInfoObjectConfigGroupComponentNodes (transformInfoInterface);
        size := allCustomizedViews.size;
        for index in 0 .. (size) - 1 loop
            nextTransformInfoInterface := TransformInfo_Access (allCustomizedViews.get (index));
            allViewsToBeModified := customizerUtil.getTransformInfoObjectConfigComponentNodesToCustomize (transformInfoInterface, nextTransformInfoInterface);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("View or component that was modified by a Customizer: ") & nextTransformInfoInterface.getName, This'Unchecked_Access, To_Unbounded_String ("generateModifiedViews()"));
            end if;
            This.generate (abeClientInformation, transformInfoInterface, allViewsToBeModified);
        end loop;
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end generate;

   --  throws Exception
   procedure generate (This : in out StoreCustomizerComponentUtil; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; allViewsToBeModifiedVector : BasicArrayList_Access) is
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
                This.logUtil.putF (To_Unbounded_String ("Retrieved: ") & specifiedTransformInfoInterface.getName, This'Unchecked_Access, To_Unbounded_String ("generateModifiedViews()"));
            end if;
            TransformGeneratorUtil_Package.getInstance.generate (abeClientInformation, nextTransformInfoInterface, specifiedTransformInfoInterface);
        end loop;
   end generate;

   procedure generate (This : in out StoreCustomizerComponentUtil; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) is
      Java_Result : constant Unbounded_String := StoreCustomizerComponentUtil'Class (This).generate (abeClientInformation, transformInfoInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generate;

begin
   null;
   instance := StoreCustomizerComponentUtil_Package.Create;

end views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package;


