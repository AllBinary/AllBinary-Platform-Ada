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
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.generic_Id.inventory.InventorySearch_Package; use views.generic_Id.inventory.InventorySearch_Package;

package views.generic_Id.inventory.AutoSearchValidationInventoryView_Package is

   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type AutoSearchValidationInventoryView is tagged;
   type AutoSearchValidationInventoryView_Access is access all AutoSearchValidationInventoryView'Class;
   type AutoSearchValidationInventoryView_Access_Array is array (Natural range <>) of AutoSearchValidationInventoryView_Access;
   type AutoSearchValidationInventoryView_Access_Array_Access is access all AutoSearchValidationInventoryView_Access_Array;

   type AutoSearchValidationInventoryView is new InventorySearch with null record;

   procedure Initialize (This : in out AutoSearchValidationInventoryView'Class; searchRequest : SearchRequest_Access);
   function Create (searchRequest : SearchRequest_Access) return AutoSearchValidationInventoryView_Access;
   function isValid (This : in out AutoSearchValidationInventoryView) return Boolean;
   function toValidationInfoDoc (This : in out AutoSearchValidationInventoryView) return Document_Access;
   function toValidationInfoNode (This : in out AutoSearchValidationInventoryView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out AutoSearchValidationInventoryView; document : Document_Access);
   function validationInfo (This : in out AutoSearchValidationInventoryView) return Unbounded_String;

end views.generic_Id.inventory.AutoSearchValidationInventoryView_Package;


