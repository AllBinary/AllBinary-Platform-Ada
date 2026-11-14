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
limited with views.admin.inventory.NewValidationView_Package;
package views.admin.inventory.NewValidationView_Package_References is
   type NewValidationView_Access is access all views.admin.inventory.NewValidationView_Package.NewValidationView'Class;
   type NewValidationView_Access_Array is array (Natural range <>) of NewValidationView_Access;
   type NewValidationView_Access_Array_Access is access all NewValidationView_Access_Array;
   type NewValidationView_Access_Array_Access_Array is array (Natural range <>) of NewValidationView_Access_Array_Access;
   type NewValidationView_Access_Array_Access_Array_Access is access all NewValidationView_Access_Array_Access_Array;
   type NewValidationView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NewValidationView_Access_Array_Access;
   end record;
   function Java_Box (Value : NewValidationView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NewValidationView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NewValidationView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NewValidationView_Access_Array_Access is (if Value /= null and then Value.all in NewValidationView_Access_Array_Object'Class then NewValidationView_Access_Array_Object'Class (Value.all).Value else null);
   type NewValidationView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NewValidationView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NewValidationView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NewValidationView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NewValidationView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NewValidationView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NewValidationView_Access_Array_Access_Array_Object'Class then NewValidationView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.admin.inventory.NewValidationView_Package_References;

with views.admin.inventory.NewValidationView_Package_References;
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
with views.admin.inventory.InventoryItemView_Package; use views.admin.inventory.InventoryItemView_Package;

package views.admin.inventory.NewValidationView_Package is

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


   subtype NewValidationView_Access is views.admin.inventory.NewValidationView_Package_References.NewValidationView_Access;
   function "=" (Left, Right : NewValidationView_Access) return Boolean renames views.admin.inventory.NewValidationView_Package_References."=";
   subtype NewValidationView_Access_Array is views.admin.inventory.NewValidationView_Package_References.NewValidationView_Access_Array;
   function "=" (Left, Right : NewValidationView_Access_Array) return Boolean renames views.admin.inventory.NewValidationView_Package_References."=";
   subtype NewValidationView_Access_Array_Access is views.admin.inventory.NewValidationView_Package_References.NewValidationView_Access_Array_Access;
   function "=" (Left, Right : NewValidationView_Access_Array_Access) return Boolean renames views.admin.inventory.NewValidationView_Package_References."=";
   function Java_Box (Value : NewValidationView_Access_Array_Access) return Java_Object_Access renames views.admin.inventory.NewValidationView_Package_References.Java_Box;
   function Java_Unbox_NewValidationView_Access_Array (Value : access Java_Object'Class) return NewValidationView_Access_Array_Access renames views.admin.inventory.NewValidationView_Package_References.Java_Unbox_NewValidationView_Access_Array;
   subtype NewValidationView_Access_Array_Access_Array is views.admin.inventory.NewValidationView_Package_References.NewValidationView_Access_Array_Access_Array;
   function "=" (Left, Right : NewValidationView_Access_Array_Access_Array) return Boolean renames views.admin.inventory.NewValidationView_Package_References."=";
   subtype NewValidationView_Access_Array_Access_Array_Access is views.admin.inventory.NewValidationView_Package_References.NewValidationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NewValidationView_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.NewValidationView_Package_References."=";
   function Java_Box (Value : NewValidationView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.admin.inventory.NewValidationView_Package_References.Java_Box;
   function Java_Unbox_NewValidationView_Access_Array_Access_Array (Value : access Java_Object'Class) return NewValidationView_Access_Array_Access_Array_Access renames views.admin.inventory.NewValidationView_Package_References.Java_Unbox_NewValidationView_Access_Array_Access_Array;

   type NewValidationView is new InventoryItemView and ValidationComponentInterface with null record;

   procedure Initialize (This : in out NewValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return NewValidationView_Access;
   function isValid (This : in out NewValidationView) return Boolean;
   function toValidationInfoDoc (This : in out NewValidationView) return Document_Access;
   function toValidationInfoNode (This : in out NewValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out NewValidationView; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out NewValidationView) return Unbounded_String;
   function getTransformInfoInterface (This : in out NewValidationView) return TransformInfoInterface_Access;

end views.admin.inventory.NewValidationView_Package;


