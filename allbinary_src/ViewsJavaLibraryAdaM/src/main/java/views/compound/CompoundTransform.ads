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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
with org.allbinary.data.tree.dom.BasicUriResolver_Package; use org.allbinary.data.tree.dom.BasicUriResolver_Package;
with org.allbinary.data.tree.dom.StoreUriResolver_Package; use org.allbinary.data.tree.dom.StoreUriResolver_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.visual.transform.AbTransformer_Package; use org.allbinary.logic.visual.transform.AbTransformer_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package; use views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package;

package views.compound.CompoundTransform_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package BasicUriResolver_Package renames Standard.org.allbinary.data.tree.dom.BasicUriResolver_Package;
   package StoreUriResolver_Package renames Standard.org.allbinary.data.tree.dom.StoreUriResolver_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package AbTransformer_Package renames Standard.org.allbinary.logic.visual.transform.AbTransformer_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CompoundContextTransformInfoObjectConfig_Package renames Standard.views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package;

   type CompoundTransform is tagged;
   type CompoundTransform_Access is access all CompoundTransform'Class;
   type CompoundTransform_Access_Array is array (Natural range <>) of CompoundTransform_Access;
   type CompoundTransform_Access_Array_Access is access all CompoundTransform_Access_Array;

   type CompoundTransform is new AbTransformer with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
   end record;

   procedure Initialize (This : in out CompoundTransform'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return CompoundTransform_Access;

end views.compound.CompoundTransform_Package;


