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
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package is

   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;

   type OverrideStoreTransformInfoObjectConfig is tagged;
   type OverrideStoreTransformInfoObjectConfig_Access is access all OverrideStoreTransformInfoObjectConfig'Class;
   type OverrideStoreTransformInfoObjectConfig_Access_Array is array (Natural range <>) of OverrideStoreTransformInfoObjectConfig_Access;
   type OverrideStoreTransformInfoObjectConfig_Access_Array_Access is access all OverrideStoreTransformInfoObjectConfig_Access_Array;

   type OverrideStoreTransformInfoObjectConfig is new GenericStoreTransformInfoObjectConfig with null record;

   procedure Initialize (This : in out OverrideStoreTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return OverrideStoreTransformInfoObjectConfig_Access;
   function generate (This : in out OverrideStoreTransformInfoObjectConfig; objectConfigDocument : Document_Access) return Document_Access;
   procedure generate (This : in out OverrideStoreTransformInfoObjectConfig; objectConfigDocument : Document_Access);

end org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package;


