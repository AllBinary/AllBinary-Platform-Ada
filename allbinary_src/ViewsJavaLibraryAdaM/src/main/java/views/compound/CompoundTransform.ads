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

with AllBinary_Java;
limited with views.compound.CompoundTransform_Package;
package views.compound.CompoundTransform_Package_References is
   type CompoundTransform_Access is access all views.compound.CompoundTransform_Package.CompoundTransform'Class;
   type CompoundTransform_Access_Array is array (Natural range <>) of CompoundTransform_Access;
   type CompoundTransform_Access_Array_Access is access all CompoundTransform_Access_Array;
   type CompoundTransform_Access_Array_Access_Array is array (Natural range <>) of CompoundTransform_Access_Array_Access;
   type CompoundTransform_Access_Array_Access_Array_Access is access all CompoundTransform_Access_Array_Access_Array;
   type CompoundTransform_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompoundTransform_Access_Array_Access;
   end record;
   function Java_Box (Value : CompoundTransform_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompoundTransform_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompoundTransform_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompoundTransform_Access_Array_Access is (if Value /= null and then Value.all in CompoundTransform_Access_Array_Object'Class then CompoundTransform_Access_Array_Object'Class (Value.all).Value else null);
   type CompoundTransform_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompoundTransform_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CompoundTransform_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompoundTransform_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompoundTransform_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompoundTransform_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CompoundTransform_Access_Array_Access_Array_Object'Class then CompoundTransform_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.compound.CompoundTransform_Package_References;

with views.compound.CompoundTransform_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.logic.visual.transform.AbTransformer_Package; use org.allbinary.logic.visual.transform.AbTransformer_Package;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;

package views.compound.CompoundTransform_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package AbTransformer_Package renames Standard.org.allbinary.logic.visual.transform.AbTransformer_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CompoundTransform_Access is views.compound.CompoundTransform_Package_References.CompoundTransform_Access;
   function "=" (Left, Right : CompoundTransform_Access) return Boolean renames views.compound.CompoundTransform_Package_References."=";
   subtype CompoundTransform_Access_Array is views.compound.CompoundTransform_Package_References.CompoundTransform_Access_Array;
   function "=" (Left, Right : CompoundTransform_Access_Array) return Boolean renames views.compound.CompoundTransform_Package_References."=";
   subtype CompoundTransform_Access_Array_Access is views.compound.CompoundTransform_Package_References.CompoundTransform_Access_Array_Access;
   function "=" (Left, Right : CompoundTransform_Access_Array_Access) return Boolean renames views.compound.CompoundTransform_Package_References."=";
   function Java_Box (Value : CompoundTransform_Access_Array_Access) return Java_Object_Access renames views.compound.CompoundTransform_Package_References.Java_Box;
   function Java_Unbox_CompoundTransform_Access_Array (Value : access Java_Object'Class) return CompoundTransform_Access_Array_Access renames views.compound.CompoundTransform_Package_References.Java_Unbox_CompoundTransform_Access_Array;
   subtype CompoundTransform_Access_Array_Access_Array is views.compound.CompoundTransform_Package_References.CompoundTransform_Access_Array_Access_Array;
   function "=" (Left, Right : CompoundTransform_Access_Array_Access_Array) return Boolean renames views.compound.CompoundTransform_Package_References."=";
   subtype CompoundTransform_Access_Array_Access_Array_Access is views.compound.CompoundTransform_Package_References.CompoundTransform_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompoundTransform_Access_Array_Access_Array_Access) return Boolean renames views.compound.CompoundTransform_Package_References."=";
   function Java_Box (Value : CompoundTransform_Access_Array_Access_Array_Access) return Java_Object_Access renames views.compound.CompoundTransform_Package_References.Java_Box;
   function Java_Unbox_CompoundTransform_Access_Array_Access_Array (Value : access Java_Object'Class) return CompoundTransform_Access_Array_Access_Array_Access renames views.compound.CompoundTransform_Package_References.Java_Unbox_CompoundTransform_Access_Array_Access_Array;

   type CompoundTransform is new AbTransformer with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
   end record;

   procedure Initialize (This : in out CompoundTransform'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return CompoundTransform_Access;

end views.compound.CompoundTransform_Package;


