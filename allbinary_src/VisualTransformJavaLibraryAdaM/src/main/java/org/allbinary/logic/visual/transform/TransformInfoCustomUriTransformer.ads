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
limited with org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package;
package org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References is
   type TransformInfoCustomUriTransformer_Access is access all org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package.TransformInfoCustomUriTransformer'Class;
   type TransformInfoCustomUriTransformer_Access_Array is array (Natural range <>) of TransformInfoCustomUriTransformer_Access;
   type TransformInfoCustomUriTransformer_Access_Array_Access is access all TransformInfoCustomUriTransformer_Access_Array;
   type TransformInfoCustomUriTransformer_Access_Array_Access_Array is array (Natural range <>) of TransformInfoCustomUriTransformer_Access_Array_Access;
   type TransformInfoCustomUriTransformer_Access_Array_Access_Array_Access is access all TransformInfoCustomUriTransformer_Access_Array_Access_Array;
   type TransformInfoCustomUriTransformer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoCustomUriTransformer_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoCustomUriTransformer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoCustomUriTransformer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoCustomUriTransformer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoCustomUriTransformer_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoCustomUriTransformer_Access_Array_Object'Class then TransformInfoCustomUriTransformer_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoCustomUriTransformer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoCustomUriTransformer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoCustomUriTransformer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoCustomUriTransformer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoCustomUriTransformer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoCustomUriTransformer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoCustomUriTransformer_Access_Array_Access_Array_Object'Class then TransformInfoCustomUriTransformer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References;

with org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with org.allbinary.logic.visual.transform.BasicTransformer_Package; use org.allbinary.logic.visual.transform.BasicTransformer_Package;

package org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package is

   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Reference_Types is
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


   subtype TransformInfoCustomUriTransformer_Access is org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References.TransformInfoCustomUriTransformer_Access;
   function "=" (Left, Right : TransformInfoCustomUriTransformer_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References."=";
   subtype TransformInfoCustomUriTransformer_Access_Array is org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References.TransformInfoCustomUriTransformer_Access_Array;
   function "=" (Left, Right : TransformInfoCustomUriTransformer_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References."=";
   subtype TransformInfoCustomUriTransformer_Access_Array_Access is org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References.TransformInfoCustomUriTransformer_Access_Array_Access;
   function "=" (Left, Right : TransformInfoCustomUriTransformer_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References."=";
   function Java_Box (Value : TransformInfoCustomUriTransformer_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References.Java_Box;
   function Java_Unbox_TransformInfoCustomUriTransformer_Access_Array (Value : access Java_Object'Class) return TransformInfoCustomUriTransformer_Access_Array_Access renames org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References.Java_Unbox_TransformInfoCustomUriTransformer_Access_Array;
   subtype TransformInfoCustomUriTransformer_Access_Array_Access_Array is org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References.TransformInfoCustomUriTransformer_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoCustomUriTransformer_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References."=";
   subtype TransformInfoCustomUriTransformer_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References.TransformInfoCustomUriTransformer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoCustomUriTransformer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References."=";
   function Java_Box (Value : TransformInfoCustomUriTransformer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References.Java_Box;
   function Java_Unbox_TransformInfoCustomUriTransformer_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoCustomUriTransformer_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package_References.Java_Unbox_TransformInfoCustomUriTransformer_Access_Array_Access_Array;

   type TransformInfoCustomUriTransformer is new BasicTransformer with null record;

   procedure Initialize (This : in out TransformInfoCustomUriTransformer'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoCustomUriTransformer_Access;

end org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package;


