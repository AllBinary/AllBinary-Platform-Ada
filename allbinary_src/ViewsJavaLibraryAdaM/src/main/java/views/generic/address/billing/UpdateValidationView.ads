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
limited with views.generic_Id.address.billing.UpdateValidationView_Package;
package views.generic_Id.address.billing.UpdateValidationView_Package_References is
   type UpdateValidationView_Access is access all views.generic_Id.address.billing.UpdateValidationView_Package.UpdateValidationView'Class;
   type UpdateValidationView_Access_Array is array (Natural range <>) of UpdateValidationView_Access;
   type UpdateValidationView_Access_Array_Access is access all UpdateValidationView_Access_Array;
   type UpdateValidationView_Access_Array_Access_Array is array (Natural range <>) of UpdateValidationView_Access_Array_Access;
   type UpdateValidationView_Access_Array_Access_Array_Access is access all UpdateValidationView_Access_Array_Access_Array;
   type UpdateValidationView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpdateValidationView_Access_Array_Access;
   end record;
   function Java_Box (Value : UpdateValidationView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpdateValidationView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpdateValidationView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpdateValidationView_Access_Array_Access is (if Value /= null and then Value.all in UpdateValidationView_Access_Array_Object'Class then UpdateValidationView_Access_Array_Object'Class (Value.all).Value else null);
   type UpdateValidationView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpdateValidationView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UpdateValidationView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpdateValidationView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpdateValidationView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpdateValidationView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UpdateValidationView_Access_Array_Access_Array_Object'Class then UpdateValidationView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.generic_Id.address.billing.UpdateValidationView_Package_References;

with views.generic_Id.address.billing.UpdateValidationView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.generic_Id.address.billing.BillingAddressView_Package; use views.generic_Id.address.billing.BillingAddressView_Package;

package views.generic_Id.address.billing.UpdateValidationView_Package is

   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UpdateValidationView_Access is views.generic_Id.address.billing.UpdateValidationView_Package_References.UpdateValidationView_Access;
   function "=" (Left, Right : UpdateValidationView_Access) return Boolean renames views.generic_Id.address.billing.UpdateValidationView_Package_References."=";
   subtype UpdateValidationView_Access_Array is views.generic_Id.address.billing.UpdateValidationView_Package_References.UpdateValidationView_Access_Array;
   function "=" (Left, Right : UpdateValidationView_Access_Array) return Boolean renames views.generic_Id.address.billing.UpdateValidationView_Package_References."=";
   subtype UpdateValidationView_Access_Array_Access is views.generic_Id.address.billing.UpdateValidationView_Package_References.UpdateValidationView_Access_Array_Access;
   function "=" (Left, Right : UpdateValidationView_Access_Array_Access) return Boolean renames views.generic_Id.address.billing.UpdateValidationView_Package_References."=";
   function Java_Box (Value : UpdateValidationView_Access_Array_Access) return Java_Object_Access renames views.generic_Id.address.billing.UpdateValidationView_Package_References.Java_Box;
   function Java_Unbox_UpdateValidationView_Access_Array (Value : access Java_Object'Class) return UpdateValidationView_Access_Array_Access renames views.generic_Id.address.billing.UpdateValidationView_Package_References.Java_Unbox_UpdateValidationView_Access_Array;
   subtype UpdateValidationView_Access_Array_Access_Array is views.generic_Id.address.billing.UpdateValidationView_Package_References.UpdateValidationView_Access_Array_Access_Array;
   function "=" (Left, Right : UpdateValidationView_Access_Array_Access_Array) return Boolean renames views.generic_Id.address.billing.UpdateValidationView_Package_References."=";
   subtype UpdateValidationView_Access_Array_Access_Array_Access is views.generic_Id.address.billing.UpdateValidationView_Package_References.UpdateValidationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpdateValidationView_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.address.billing.UpdateValidationView_Package_References."=";
   function Java_Box (Value : UpdateValidationView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.generic_Id.address.billing.UpdateValidationView_Package_References.Java_Box;
   function Java_Unbox_UpdateValidationView_Access_Array_Access_Array (Value : access Java_Object'Class) return UpdateValidationView_Access_Array_Access_Array_Access renames views.generic_Id.address.billing.UpdateValidationView_Package_References.Java_Unbox_UpdateValidationView_Access_Array_Access_Array;

   type UpdateValidationView is new BillingAddressView and ValidationComponentInterface with null record;

   procedure Initialize (This : in out UpdateValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UpdateValidationView_Access;
   function isValid (This : in out UpdateValidationView) return Boolean;
   function validationInfo (This : in out UpdateValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out UpdateValidationView) return Document_Access;
   function toValidationInfoNode (This : in out UpdateValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out UpdateValidationView; document_Param : access Document_Package.Document'Class);
   function getTransformInfoInterface (This : in out UpdateValidationView) return TransformInfoInterface_Access;

end views.generic_Id.address.billing.UpdateValidationView_Package;


