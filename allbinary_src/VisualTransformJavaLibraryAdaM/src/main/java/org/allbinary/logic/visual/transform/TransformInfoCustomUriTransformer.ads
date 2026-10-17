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
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
with org.allbinary.data.tree.dom.BasicUriResolver_Package; use org.allbinary.data.tree.dom.BasicUriResolver_Package;
with org.allbinary.data.tree.dom.CustomUriResolver_Package; use org.allbinary.data.tree.dom.CustomUriResolver_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.logic.visual.transform.BasicTransformer_Package; use org.allbinary.logic.visual.transform.BasicTransformer_Package;

package org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package is

   package BasicUriResolver_Package renames Standard.org.allbinary.data.tree.dom.BasicUriResolver_Package;
   package CustomUriResolver_Package renames Standard.org.allbinary.data.tree.dom.CustomUriResolver_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectConfigAndManipulatorFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
   package TransformInfoObjectConfigInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;

   type TransformInfoCustomUriTransformer is tagged;
   type TransformInfoCustomUriTransformer_Access is access all TransformInfoCustomUriTransformer'Class;
   type TransformInfoCustomUriTransformer_Access_Array is array (Natural range <>) of TransformInfoCustomUriTransformer_Access;
   type TransformInfoCustomUriTransformer_Access_Array_Access is access all TransformInfoCustomUriTransformer_Access_Array;

   type TransformInfoCustomUriTransformer is new BasicTransformer with null record;

   procedure Initialize (This : in out TransformInfoCustomUriTransformer'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return TransformInfoCustomUriTransformer_Access;

end org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package;


