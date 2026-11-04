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

limited with views.generic_Id.address.billing.EditValidationView_Package;
package views.generic_Id.address.billing.EditValidationView_Package_References is
   type EditValidationView_Access is access all views.generic_Id.address.billing.EditValidationView_Package.EditValidationView'Class;
   type EditValidationView_Access_Array is array (Natural range <>) of EditValidationView_Access;
   type EditValidationView_Access_Array_Access is access all EditValidationView_Access_Array;
   type EditValidationView_Access_Array_Access_Array is array (Natural range <>) of EditValidationView_Access_Array_Access;
   type EditValidationView_Access_Array_Access_Array_Access is access all EditValidationView_Access_Array_Access_Array;
end views.generic_Id.address.billing.EditValidationView_Package_References;

with views.generic_Id.address.billing.EditValidationView_Package_References;
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

package views.generic_Id.address.billing.EditValidationView_Package is

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


   subtype EditValidationView_Access is views.generic_Id.address.billing.EditValidationView_Package_References.EditValidationView_Access;
   function "=" (Left, Right : EditValidationView_Access) return Boolean renames views.generic_Id.address.billing.EditValidationView_Package_References."=";
   subtype EditValidationView_Access_Array is views.generic_Id.address.billing.EditValidationView_Package_References.EditValidationView_Access_Array;
   function "=" (Left, Right : EditValidationView_Access_Array) return Boolean renames views.generic_Id.address.billing.EditValidationView_Package_References."=";
   subtype EditValidationView_Access_Array_Access is views.generic_Id.address.billing.EditValidationView_Package_References.EditValidationView_Access_Array_Access;
   function "=" (Left, Right : EditValidationView_Access_Array_Access) return Boolean renames views.generic_Id.address.billing.EditValidationView_Package_References."=";
   subtype EditValidationView_Access_Array_Access_Array is views.generic_Id.address.billing.EditValidationView_Package_References.EditValidationView_Access_Array_Access_Array;
   function "=" (Left, Right : EditValidationView_Access_Array_Access_Array) return Boolean renames views.generic_Id.address.billing.EditValidationView_Package_References."=";
   subtype EditValidationView_Access_Array_Access_Array_Access is views.generic_Id.address.billing.EditValidationView_Package_References.EditValidationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EditValidationView_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.address.billing.EditValidationView_Package_References."=";

   type EditValidationView is new BillingAddressView and ValidationComponentInterface with record
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out EditValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return EditValidationView_Access;
   function isValid (This : in out EditValidationView) return Boolean;
   function validationInfo (This : in out EditValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out EditValidationView) return Document_Access;
   function toValidationInfoNode (This : in out EditValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out EditValidationView; document_Param : access Document_Package.Document'Class);

end views.generic_Id.address.billing.EditValidationView_Package;


