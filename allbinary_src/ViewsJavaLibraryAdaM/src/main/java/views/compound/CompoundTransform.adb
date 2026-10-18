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


with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.data.tree.dom.BasicUriResolver_Package; use org.allbinary.data.tree.dom.BasicUriResolver_Package;
with org.allbinary.data.tree.dom.StoreUriResolver_Package; use org.allbinary.data.tree.dom.StoreUriResolver_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package; use views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package;

package body views.compound.CompoundTransform_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package BasicUriResolver_Package renames Standard.org.allbinary.data.tree.dom.BasicUriResolver_Package;
   package StoreUriResolver_Package renames Standard.org.allbinary.data.tree.dom.StoreUriResolver_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package CompoundContextTransformInfoObjectConfig_Package renames Standard.views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package;
   procedure Initialize_Fields (This : in out CompoundTransform'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := AbeClientInformationInterface_Access (ServiceClientInformationInterfaceFactory_Package.getInstance);
   end Initialize_Fields;


   procedure Initialize (This : in out CompoundTransform'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      objectConfig : CompoundContextTransformInfoObjectConfig_Access;
      templateInputStream : InputStream_Access;
   begin
        AbTransformer_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        CompoundTransform'Class (This).setURIResolver (URIResolver_Access (StoreUriResolver_Package.Create (CompoundTransform'Class (This).getTransformInfoInterface, BasicUriResolver_Access (CompoundTransform'Class (This).getURIResolver))));
        objectConfig := CompoundContextTransformInfoObjectConfig_Package.Create (This.abeClientInformation, CompoundTransform'Class (This).getTransformInfoInterface, CompoundTransform'Class (This).getTransformInfoInterface.getObjectConfigInterface.toXmlDoc);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "ObjectConfig: " & ASCII.LF & "") & objectConfig.toString, CompoundTransform_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        templateInputStream := objectConfig.createInputStream;
        CompoundTransform'Class (This).setInputStream (templateInputStream);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return CompoundTransform_Access is
      This : constant CompoundTransform_Access := new CompoundTransform;
   begin
      CompoundTransform_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

end views.compound.CompoundTransform_Package;


