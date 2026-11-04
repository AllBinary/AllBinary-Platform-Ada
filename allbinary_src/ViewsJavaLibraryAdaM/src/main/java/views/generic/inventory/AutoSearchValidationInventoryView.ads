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

limited with views.generic_Id.inventory.AutoSearchValidationInventoryView_Package;
package views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References is
   type AutoSearchValidationInventoryView_Access is access all views.generic_Id.inventory.AutoSearchValidationInventoryView_Package.AutoSearchValidationInventoryView'Class;
   type AutoSearchValidationInventoryView_Access_Array is array (Natural range <>) of AutoSearchValidationInventoryView_Access;
   type AutoSearchValidationInventoryView_Access_Array_Access is access all AutoSearchValidationInventoryView_Access_Array;
   type AutoSearchValidationInventoryView_Access_Array_Access_Array is array (Natural range <>) of AutoSearchValidationInventoryView_Access_Array_Access;
   type AutoSearchValidationInventoryView_Access_Array_Access_Array_Access is access all AutoSearchValidationInventoryView_Access_Array_Access_Array;
end views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References;

with views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.control.search.SearchRequest_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.generic_Id.inventory.InventorySearch_Package; use views.generic_Id.inventory.InventorySearch_Package;

package views.generic_Id.inventory.AutoSearchValidationInventoryView_Package is

   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype SearchRequest_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access;
   use type SearchRequest_Access;
   subtype SearchRequest_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array;
   use type SearchRequest_Access_Array;
   subtype SearchRequest_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access;
   use type SearchRequest_Access_Array_Access;
   subtype SearchRequest_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array;
   use type SearchRequest_Access_Array_Access_Array;
   subtype SearchRequest_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array_Access;
   use type SearchRequest_Access_Array_Access_Array_Access;
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


   subtype AutoSearchValidationInventoryView_Access is views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References.AutoSearchValidationInventoryView_Access;
   function "=" (Left, Right : AutoSearchValidationInventoryView_Access) return Boolean renames views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References."=";
   subtype AutoSearchValidationInventoryView_Access_Array is views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References.AutoSearchValidationInventoryView_Access_Array;
   function "=" (Left, Right : AutoSearchValidationInventoryView_Access_Array) return Boolean renames views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References."=";
   subtype AutoSearchValidationInventoryView_Access_Array_Access is views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References.AutoSearchValidationInventoryView_Access_Array_Access;
   function "=" (Left, Right : AutoSearchValidationInventoryView_Access_Array_Access) return Boolean renames views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References."=";
   subtype AutoSearchValidationInventoryView_Access_Array_Access_Array is views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References.AutoSearchValidationInventoryView_Access_Array_Access_Array;
   function "=" (Left, Right : AutoSearchValidationInventoryView_Access_Array_Access_Array) return Boolean renames views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References."=";
   subtype AutoSearchValidationInventoryView_Access_Array_Access_Array_Access is views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References.AutoSearchValidationInventoryView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AutoSearchValidationInventoryView_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.inventory.AutoSearchValidationInventoryView_Package_References."=";

   type AutoSearchValidationInventoryView is new InventorySearch with null record;

   procedure Initialize (This : in out AutoSearchValidationInventoryView'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);
   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return AutoSearchValidationInventoryView_Access;
   function isValid (This : in out AutoSearchValidationInventoryView) return Boolean;
   function toValidationInfoDoc (This : in out AutoSearchValidationInventoryView) return Document_Access;
   function toValidationInfoNode (This : in out AutoSearchValidationInventoryView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out AutoSearchValidationInventoryView; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out AutoSearchValidationInventoryView) return Unbounded_String;

end views.generic_Id.inventory.AutoSearchValidationInventoryView_Package;


